/*
 * Adarsh Solanki
 * as5nr
 * 2/4/12
 * postfixCalculator.cpp
 */

#include "postfixCalculator.h"

//constructor
postfixCalculator::postfixCalculator()
{
    stk = new stack;
}

void postfixCalculator::addNum(int x)
{
    stk->push(x);
}

void postfixCalculator::add()
{
    int x = stk->top();
    stk->pop();
    int y = stk->top();
    stk->pop();
    stk->push(y+x);
}

void postfixCalculator::subtract()
{
    int x = stk->top();
    stk->pop();
    int y = stk->top();
    stk->pop();
    stk->push(y-x);
}

void postfixCalculator::multiply()
{

    int x = stk->top();
    stk->pop();
    int y = stk->top();
    stk->pop();
    stk->push(y*x);
}

void postfixCalculator::divide()
{
    // should the stack hold floats for this?  What if its a nonint answer 
    int x = stk->top();
    stk->pop();
    int y = stk->top();
    stk->pop();
    stk->push(y/x);
}

void postfixCalculator::negate()
{
    int x = stk->top();
    stk->pop();
    stk->push(x*-1);
}

int postfixCalculator::topValue()
{
    return stk->top();
}



