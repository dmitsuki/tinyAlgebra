using System;

namespace tinyAlgebra
{
	static class tA
	{
		//
		// Vector 2 operations //
		//
		public static Vector2 Vec2AddValue(Vector2 v, float value)
		{
			return Vector2(v.x + value, v.y + value); 
		}

		public static Vector2 Vec2SubstractValue(Vector2 v, float value)
		{
			return Vector2(v.x - value, v.y - value);
		}

		public static Vector2 Vec2Scale(Vector2 v, float value)
		{
			return Vector2(v.x * value, v.y * value);
		}

		public static Vector2 Vec2Add(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x + v2.x, v1.y + v2.y);
		}

		public static Vector2 Vec2Substract(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x - v2.x, v1.y - v2.y);
		}

		public static Vector2 Vec2Multiply(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x * v2.x, v1.y * v2.y);
		}

		public static Vector2 Vec2Divide(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x / v2.x, v1.y / v2.y);
		}

		public static float Vec2DotProduct(Vector2 v1, Vector2 v2)
		{
			return v1.x * v2.x + v1.y * v2.y;
		}

		public static float Vec2Length(Vector2 v)
		{
			return Math.Sqrt((v.x * v.x) + (v.y * v.y));
		}

		public static float Vec2LengthSquare(Vector2 v)
		{
			return (v.x * v.x) + (v.y * v.y);
		}

		public static float Vec2Distance(Vector2 v1, Vector2 v2)
		{
			return Math.Sqrt((v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y));
		}
		// Vec2Lerp

		public static Vector2 Vec2Normalize(Vector2 v)
		{
			float length = Vec2Length(v);

			return Vector2(v.x / length, v.y / length);
		}

		//
		// Vector 3 operations //
		//

		public static Vector3 Vec3AddValue(Vector3 v, float value)
		{
			return Vector3(v.x + value, v.y + value, v.z + value);
		}

		public static Vector3 Vec3SubstractValue(Vector3 v, float value)
		{
			return Vector3(v.x - value, v.y - value, v.z - value);
		}

		public static Vector3 Vec3Scale(Vector3 v, float value)
		{
			return Vector3(v.x * value, v.y * value, v.z * value);
		}

		public static Vector3 Vec3Negate(Vector3 v)
		{
			return Vector3(-v.x, -v.y, -v.z);
		}

		public static Vector3 Vec3Add(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z);
		}

		public static Vector3 Vec3Substract(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z);
		}

		public static Vector3 Vec3Multiply(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x * v2.x, v1.y * v2.y, v1.z * v2.z);
		}

		public static Vector3 Vec3Divide(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x / v2.x, v1.y / v2.y, v1.z / v2.z);
		}

		public static float Vec3DotProduct(Vector3 v1, Vector3 v2)
		{
			return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z;
		}

		public static float Vec3DotProduct(float v1x, float v1y, float v1z, float v2x, float v2y, float v2z)
		{
			return v1x * v2x + v1y * v2y + v1z * v2z;
		}

		public static float Vec3Length(Vector3 v)
		{
			return Math.Sqrt((v.x * v.x) + (v.y * v.y) + (v.z * v.z));
		}

		public static float Vec3LengthSquare(Vector3 v)
		{
			return (v.x * v.x) + (v.y * v.y) + (v.z * v.z);
		}

		public static Vector3 Vec3CrossProduct(Vector3 v1, Vector3 v2)
		{
			return Vector3((v1.y * v2.z) - (v1.z * v2.y), (v1.z * v2.x) - (v1.x * v2.z), (v1.x * v2.y) - (v1.y * v2.x));
		}

		public static float Vec3Distance(Vector3 v1, Vector3 v2)
		{
			return Math.Sqrt((v1.x - v2.x) *(v1.x - v2.x) + (v1.y - v2.y) *(v1.y - v2.y) + (v1.z - v2.z) *(v1.z - v2.z));
		}

		// Need to check if correct
		public static Vector3 Vec3Normalize(Vector3 v)
		{
			float length = Vec3Length(v);
			return Vector3(v.x / length, v.y / length, v.z / length);
		}

		public static Vector3 Vec3Transform(Vector3 v, Mat4 m)
		{
			float x = m.cols[0].x * v.x + m.cols[1].x * v.y + m.cols[2].x * v.z + m.cols[3].x;
			float y = m.cols[0].y * v.x + m.cols[1].y * v.y + m.cols[2].y * v.z + m.cols[3].y;
			float z = m.cols[0].z * v.x + m.cols[1].z * v.y + m.cols[2].z * v.z + m.cols[3].z;

			return Vector3(x, y, z);
		}

		// TODO:
		// Vec3QuaternionRotation
		// Vec3Lerp


		public static float Vec4DotProduct(Vector4 v1, Vector4 v2)
		{
			return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z + v1.w * v2.w;
		}

		public static float Vec4DotProduct(float v1x, float v1y, float v1z, float v1w, float v2x, float v2y, float v2z, float v2w)
		{
			return v1x * v2x + v1y * v2y + v1z * v2z + v1w * v2w;
		}

		//
		// Matrix operations //
		//

		public static float Mat4Determinant(Mat4 m)
		{
			float m00 = m.cols[0].x, m01 = m.cols[1].x, m02 = m.cols[2].x, m03 = m.cols[3].x;
			float m10 = m.cols[0].y, m11 = m.cols[1].y, m12 = m.cols[2].y, m13 = m.cols[3].y;
			float m20 = m.cols[0].z, m21 = m.cols[1].z, m22 = m.cols[2].z, m23 = m.cols[3].z;
			float m30 = m.cols[0].w, m31 = m.cols[1].w, m32 = m.cols[2].w, m33 = m.cols[3].w;

			float result = m00*(m11*(m22*m33 - m23*m32) - m12*(m23*m31 - m21*m33) + m13*(m21*m32 - m22*m31)) -
						   m01*(m12*(m23*m30 - m20*m33) - m13*(m20*m32 - m22*m30) + m10*(m22*m33 - m23*m32)) +
						   m02*(m13*(m20*m31 - m21*m30) - m10*(m21*m33 - m23*m31) + m11*(m23*m30 - m20*m33)) -
						   m03*(m10*(m21*m32 - m22*m31) - m11*(m22*m30 - m20*m32) + m12*(m20*m31 - m21*m30));

			return result;
		}

		public static float Mat4Trace(Mat4 m)
		{
			return m.cols[0].x + m.cols[1].y + m.cols[2].z + m.cols[3].w;
		}

		public static Mat4 Mat4Add(Mat4 m1, Mat4 m2)
		{
			Mat4 r = Mat4.Zero();

			r.cols[0].x = m1.cols[0].x + m2.cols[0].x;
			r.cols[0].y = m1.cols[0].y + m2.cols[0].y;
			r.cols[0].z = m1.cols[0].z + m2.cols[0].z;
			r.cols[0].w = m1.cols[0].w + m2.cols[0].w;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[2].x = m1.cols[2].x + m2.cols[2].x;
			r.cols[2].y = m1.cols[2].y + m2.cols[2].y;
			r.cols[2].z = m1.cols[2].z + m2.cols[2].z;
			r.cols[2].w = m1.cols[2].w + m2.cols[2].w;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;

			return r;
		}
		
		public static Mat4 Mat4Substract(Mat4 m1, Mat4 m2)
		{
			Mat4 r = Mat4.Zero();

			r.cols[0].x = m1.cols[0].x - m2.cols[0].x;
			r.cols[0].y = m1.cols[0].y - m2.cols[0].y;
			r.cols[0].z = m1.cols[0].z - m2.cols[0].z;
			r.cols[0].w = m1.cols[0].w - m2.cols[0].w;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[2].x = m1.cols[2].x - m2.cols[2].x;
			r.cols[2].y = m1.cols[2].y - m2.cols[2].y;
			r.cols[2].z = m1.cols[2].z - m2.cols[2].z;
			r.cols[2].w = m1.cols[2].w - m2.cols[2].w;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;

			return r;
		}
		// Mat4Normalize
		// Mat4Transpose
		// mat4Invert
		public static Mat4 Mat4Translate(float x, float y, float z)
		{
			Vector4 col1 = Vector4(1.0f, 0.0f, 0.0f, 0.0f);
			Vector4 col2 = Vector4(0.0f, 1.0f, 0.0f, 0.0f);
			Vector4 col3 = Vector4(0.0f, 0.0f, 1.0f, 0.0f);
			Vector4 col4 = Vector4(   x,    y,    z, 1.0f);

			return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Mat4Scale(float x, float y, float z)
 		{
			 Vector4 col1 = Vector4(   x, 0.0f, 0.0f, 0.0f);
			 Vector4 col2 = Vector4(0.0f,    y, 0.0f, 0.0f);
			 Vector4 col3 = Vector4(0.0f, 0.0f,    z, 0.0f);
			 Vector4 col4 = Vector4(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Mat4Scale(Vector3 v)
		{
			 Vector4 col1 = Vector4( v.x, 0.0f, 0.0f, 0.0f);
			 Vector4 col2 = Vector4(0.0f,  v.y, 0.0f, 0.0f);
			 Vector4 col3 = Vector4(0.0f, 0.0f,  v.z, 0.0f);
			 Vector4 col4 = Vector4(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4(col1, col2, col3, col4);
		}

		// TODO:
		// Custom axis
		// Maybe xyz rotation?
		public static Mat4 Mat4RotateX(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
 			float sinT = Math.Sin(angle);

			m.cols[1].y = cosT;
			m.cols[1].z = sinT;
			m.cols[2].y = -sinT;
			m.cols[2].z = cosT;

			return m;
		}

		public static Mat4 Mat4RotateY(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].z = -sinT;
			m.cols[2].x = sinT;
			m.cols[2].z = cosT;

			return m;
		}

		public static Mat4 Mat4RotateZ(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].y = sinT;
			m.cols[1].x = -sinT;
			m.cols[1].y = cosT;

			return m;
		}

		public static Mat4 Mat4Multiply(Mat4 m1, Mat4 m2)
		{
			Vector4 col1 = Vector4.Zero();
			Vector4 col2 = Vector4.Zero();
			Vector4 col3 = Vector4.Zero();
			Vector4 col4 = Vector4.Zero();

			col1.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			col1.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			col1.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			col1.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			//
			col2.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			col2.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			col2.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			col2.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			//
			col3.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			col3.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			col3.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			col3.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			//
			col4.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);
			col4.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);
			col4.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);
			col4.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);

			return Mat4(col1, col2, col3, col4);
		}

		//Projection matrices operation

		public static Mat4 Mat4PProjection(float fov, float height, float width, float near, float far)
		{
			Mat4 m = Mat4.Zero();
			float aspect = height / width;
			float fovRad = 1.0f / Math.Tan(fov * 0.5f / 180.0f * 3.14159f); 

			m.cols[0].x = aspect * fovRad;
 			m.cols[1].y = fovRad;
			m.cols[2].z = far / (far - near);
			m.cols[2].w = 1.0f;
			m.cols[3].z = (-far * near) / (far - near);

			return m;
		}

		//
		// Quaternions Operation //
		//
		
	}
}