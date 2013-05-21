/* MathHelper - Contains commonly used precalculated values */
module dna.framework.mathhelper;

import std.math;

static class MathHelper {
public:
    //TODO: Need to look up the exact values of these constants
    const float e       = 0.0f;
    const float log10E  = 0.0f;
    const float log2E   = 0.0f;
    const float pi      = 3.141593f;
    const float piOver2 = 1.57079637050629f;
    const float piOver4 = 0.0f;
    const float twoPi   = 0.0f;

    //Returns the Cartesian coordinate for one axis of a point that is defined by a
    //given triangle and two normalized barycentric (areal) coordinates
    float barycentric(float value1, float value2, float value3, float amount1, float amount2)
    {
        return ((1.0f - amount1 - amount2) * value1) + (amount1 * value2) + (amount2 * value3);
    }

    //Performs a Catmull-Rom interpolation using the specified positions
    float catmullRom(float value1, float value2, float value3, float value4, float amount)
    {

    }

    //Restricts a value to be within a specified range
    float clamp(float value, float min, float max)
    {
        return (value > max) ? max : ((value < min) ? min : value);
    }

    //Calculates the absolute value of the difference of two values
    float distance(float value1, float value2)
    {
        return abs(value2 - value1);
    }

    //Performs a Hermite spline interpolation
    float hermite(float value1, float tangent1, float value2, float tangent2, float amount)
    {

    }

    //Linearly interpolates between two values
    float lerp(float value1, float value2, float amount)
    {
        return value1 + (value2 - value1) * amount;
    }

    //Returns the greater of two values
    float max(float value1, float value2)
    {
        return (value1 > value2) ? value1 : value2;
    }

    //Returns the lesser of two values
    float min(float value1, float value2)
    {
        return (value1 < value2) ? value1 : value2;
    }

    //Interpolates between two values using a cubic equation
    float smoothStep(float value1, float value2, float amount)
    {

    }

    //Converts radians to degrees
    float toDegrees(float radians)
    {
        return radians * (180.0f / Pi);
    }

    //Converts degrees to radians
    float toRadians(float degrees)
    {
        return degrees * (Pi / 180.0f);
    }

    //Reduces a given angle to a value between pi and -pi
    float wrapAngle(float angle)
    {
        return x - 2.0f * Pi * floor(x / (2.0f * Pi) + 0.5f);
    }
}

