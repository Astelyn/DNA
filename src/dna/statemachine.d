/* StateMachine - a stack-based structure that manages game states */
module dna.statemachine;

import std.container;
import dna.state;

class StateMachine {
private:
	StateNode front;

public:
	this(ref State state)
	{
		front = new StateNode(state);
		peek().init();
	}

	void push(ref State state)
	{
		front.next = new StateNode(state);
		front = front.next;
	}

	State pop()
	{
		auto ret = front.data;
		front = front.prev;
		front.next = null;
		return ret;
	}

	ref State peek()
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
