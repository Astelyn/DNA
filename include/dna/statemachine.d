/*

Copyright (C) 2013 Allie Saia <allie@fcraft.net>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

module dna.statemachine;

import std.container;
import dna.state;

export static class StateMachine {
private:
	static StateNode front;

public:
	static void init(ref State state)
	{
		front = new StateNode(state);
		peek().init();
	}

	static void push(ref State state)
	{
		if (front !is null) {
			front.next = new StateNode(state);
			front = front.next;
		} else {
			front = new StateNode(state);
		}
	}

	static State pop()
	{
		auto ret = front.data;
		front = front.prev;
		front.next = null;
		return ret;
	}

	static ref State peek()
	{
		return front.data;
	}
}

class StateNode {
public:
	State data;
	StateNode next;
	StateNode prev;

	this(ref State state)
	{
		data = state;
	}
}

