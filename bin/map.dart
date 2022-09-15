var capital = {
  'Jakarta': 'Indonesia',
  'London': 'England',
  'Tokyo': 'Japan'
};

print(capital['Jakarta']);

// Output: Indonesia

// menampilkan key

var mapKeys = capital.keys;

// mapKeys = (Jakarta, London, Tokyo)

// menampilkan value
var mapValues = capital.values;

// mapValues = (Indonesia, England, Japan)

//menambahkan baru
capital['New Delhi'] = 'India';
print(capital);

// Output: {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}