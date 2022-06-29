# Square-root-solidity

This is a algorithm to find the square root of a number using Newton Raphson Method.

### Newton Raphson method

The Newton Raphson method is a way to find a good aproximation for the root of a real-valued function. The idea is to use the continously and differentiable of a function
to approximate it by a straight line tangent to it.

The method needs to have a near point of the solution, lets say it is a x = x0. Then, a approximation would be given by <br><blockquote>x1 = x0 - f(x0)/f'(x0).</blockquote>

<br>The method consists in iterating the approximation above as many times as necessary to get the desire accuracy. Then, for a xn:
<br><blockquote>xn+1 = xn - f(xn)/f'(xn).</blockquote>

In that point of view, as we are dealing with solidity, it is a good point to try doing the fewer iterations to avoid high gas consumption. Besides that, it is also good to
have a good initial point to avoid even more the number of iterations.
