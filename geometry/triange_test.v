import geometry

// -----------------------------------------------------------------------------
// Left triangle
// -----------------------------------------------------------------------------

// test_generate_left_triangle_big_6 Test to generate a left triangle of size 6 without custom symbol
fn test_generate_left_triangle_big_6() {
	opts := geometry.default_shape_options_with_size(6)

	shape := geometry.generate_left_triangle(opts)

	assert shape == ['*', '**', '***', '****', '*****', '******']
}

// test_generate_left_triangle_small_2 Test to generate a left triangle of size 2 without custom symbol
fn test_generate_left_triangle_small_2() {
	opts := geometry.default_shape_options_with_size(2)

	shape := geometry.generate_left_triangle(opts)

	assert shape == ['*', '**']
}

// test_generate_left_triangle_small_2_custom Test to generate a left triangle of size 2 with a custom symbol
fn test_generate_left_triangle_small_2_custom() {
	opts := geometry.new_shape_options(.left_triangle, 2, `x`)

	shape := geometry.generate_left_triangle(opts)

	assert shape == ['x', 'xx']
}

// test_generate_left_triangle_invalid Invalid left triangle
fn test_generate_left_triangle_invalid() {
	opts := geometry.default_shape_options_with_size(-1)

	shape := geometry.generate_left_triangle(opts)

	assert shape.len == 0
}

fn test_generate_left_triangle_unicode_1() {
	opts := geometry.new_shape_options(.left_triangle, 3, `🔼`)

	shape := geometry.generate_left_triangle(opts)

	assert shape == ['🔼', '🔼🔼', '🔼🔼🔼']
}

fn test_generate_left_triangle_unicode_2() {
	opts := geometry.new_shape_options(.left_triangle, 2, `ॐ`)

	shape := geometry.generate_left_triangle(opts)

	assert shape == ['ॐ', 'ॐॐ']
}

// -----------------------------------------------------------------------------
// Right triangle
// -----------------------------------------------------------------------------

// test_generate_right_triangle_big_6 Test to generate a left triangle of size 6 without custom symbol
fn test_generate_right_triangle_big_6() {
	opts := geometry.default_shape_options_with_size(6)

	shape := geometry.generate_right_triangle(opts)

	assert shape == ['     *', '    **', '   ***', '  ****', ' *****', '******']
}

// test_generate_right_triangle_small_2 Test to generate a left triangle of size 2 without custom symbol
fn test_generate_right_triangle_small_2() {
	opts := geometry.default_shape_options_with_size(2)

	shape := geometry.generate_right_triangle(opts)

	assert shape == [' *', '**']
}

// test_generate_right_triangle_small_2_custom Test to generate a left triangle of size 2 with a custom symbol
fn test_generate_right_triangle_small_2_custom() {
	opts := geometry.new_shape_options(.left_triangle, 2, `x`)

	shape := geometry.generate_right_triangle(opts)

	assert shape == [' x', 'xx']
}

// test_generate_right_triangle_invalid Invalid right triangle
fn test_generate_right_triangle_invalid() {
	opts := geometry.default_shape_options_with_size(-1)

	shape := geometry.generate_right_triangle(opts)

	assert shape.len == 0
}

fn test_generate_right_triangle_unicode_1() {
	opts := geometry.new_shape_options(.left_triangle, 3, `🔼`)

	shape := geometry.generate_right_triangle(opts)

	assert shape == ['  🔼', ' 🔼🔼', '🔼🔼🔼']
}

fn test_generate_right_triangle_unicode_2() {
	opts := geometry.new_shape_options(.left_triangle, 2, `🀃`)

	shape := geometry.generate_right_triangle(opts)

	assert shape == [' 🀃', '🀃🀃']
}

// -----------------------------------------------------------------------------
// Pyramid
// -----------------------------------------------------------------------------

// test_generate_pyramid_big_6 Test to generate a left triangle of size 6 without custom symbol
fn test_generate_pyramid_big_6() {
	opts := geometry.default_shape_options_with_size(6)

	shape := geometry.generate_pyramid(opts)

	assert shape == ['     *', '    ***', '   *****', '  *******', ' *********', '***********']
}

// test_generate_pyramid_small_2 Test to generate a left triangle of size 2 without custom symbol
fn test_generate_pyramid_small_2() {
	opts := geometry.default_shape_options_with_size(2)

	shape := geometry.generate_pyramid(opts)

	assert shape == [' *', '***']
}

// test_generate_pyramid_small_2_custom Test to generate a left triangle of size 2 with a custom symbol
fn test_generate_pyramid_small_2_custom() {
	opts := geometry.new_shape_options(.left_triangle, 2, `x`)

	shape := geometry.generate_pyramid(opts)

	assert shape == [' x', 'xxx']
}

// test_generate_pyramid_invalid Invalid pyramid
fn test_generate_pyramid_invalid() {
	opts := geometry.new_shape_options(.left_triangle, -1, `x`)

	shape := geometry.generate_pyramid(opts)

	assert shape.len == 0
}

fn test_generate_pyramid_unicode_1() {
	opts := geometry.new_shape_options(.left_triangle, 3, `🔼`)

	shape := geometry.generate_pyramid(opts)

	assert shape == ['  🔼', ' 🔼🔼🔼', '🔼🔼🔼🔼🔼']
}

fn test_generate_pyramid_unicode_2() {
	opts := geometry.new_shape_options(.left_triangle, 2, `🀃`)

	shape := geometry.generate_pyramid(opts)

	assert shape == [' 🀃', '🀃🀃🀃']
}
