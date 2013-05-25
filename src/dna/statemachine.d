/* StateMachine - a stack-based structure that manages game states */
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
