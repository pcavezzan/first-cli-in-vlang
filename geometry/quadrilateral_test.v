import geometry

// -----------------------------------------------------------------------------
// Square
// -----------------------------------------------------------------------------

// test_generate_square_big_6 Test to generate a square of size 6 without custom symbol
fn test_generate_square_big_6() {
	opts := geometry.default_shape_options_with_size(6)

	shape := geometry.generate_square(opts)

	assert shape == ['******', '******', '******', '******', '******', '******']
}

// test_generate_square_small_2 Test to generate a small square of size 2 without custom symbol
fn test_generate_square_small_2() {
	opts := geometry.default_shape_options_with_size(2)

	shape := geometry.generate_square(opts)

	assert shape == ['**', '**']
}

// test_generate_square_small_2_custom Test to generate a small square of size 2 with a custom symbol
fn test_generate_square_small_2_custom() {
	opts := geometry.new_shape_options(.left_triangle, 2, `x`)

	shape := geometry.generate_square(opts)

	assert shape == ['xx', 'xx']
}

// test_generate_square_invalid Invalid square
fn test_generate_square_invalid() {
	opts := geometry.default_shape_options_with_size(-1)

	shape := geometry.generate_square(opts)

	assert shape.len == 0
}

fn test_generate_square_unicode_1() {
	opts := geometry.new_shape_options(.left_triangle, 3, `🔼`)

	shape := geometry.generate_square(opts)

	assert shape == ['🔼🔼🔼', '🔼🔼🔼', '🔼🔼🔼']
}

fn test_generate_square_unicode_2() {
	opts := geometry.new_shape_options(.left_triangle, 2, `🀃`)

	shape := geometry.generate_square(opts)

	assert shape == ['🀃🀃', '🀃🀃']
}

// -----------------------------------------------------------------------------
// Diamond
// -----------------------------------------------------------------------------

// test_generate_diamond_big_7 Test to generate a diamond of size 5 without custom symbol
fn test_generate_diamond_big_7() {
	opts := geometry.default_shape_options_with_size(5)

	shape := geometry.generate_diamond(opts)

	assert shape == ['    *', '   ***', '  *****', ' *******', '*********', ' *******', '  *****',
		'   ***', '    *']
}

// test_generate_diamond_small_2 Test to generate a small diamond of size 2 without custom symbol
fn test_generate_diamond_small_2() {
	opts := geometry.default_shape_options_with_size(2)

	shape := geometry.generate_diamond(opts)

	assert shape == [' *', '***', ' *']
}

// test_generate_diamond_small_2_custom Test to generate a small diamond of size 2 with a custom symbol
fn test_generate_diamond_small_2_custom() {
	opts := geometry.new_shape_options(.left_triangle, 2, `x`)

	shape := geometry.generate_diamond(opts)

	assert shape == [' x', 'xxx', ' x']
}

// test_generate_diamond_invalid Invalid diamond
fn test_generate_diamond_invalid() {
	opts := geometry.default_shape_options_with_size(-1)

	shape := geometry.generate_diamond(opts)

	assert shape.len == 0
}

fn test_generate_diamond_unicode_1() {
	opts := geometry.new_shape_options(.left_triangle, 3, `🔼`)

	shape := geometry.generate_diamond(opts)

	assert shape == ['  🔼', ' 🔼🔼🔼', '🔼🔼🔼🔼🔼', ' 🔼🔼🔼', '  🔼']
}

fn test_generate_diamond_unicode_2() {
	opts := geometry.new_shape_options(.left_triangle, 2, `শ`)

	shape := geometry.generate_diamond(opts)

	assert shape == [' শ', 'শশশ', ' শ']
}
