String numberToString(int value) {
  // Define the units and their corresponding abbreviations
  const units = <int, String>{
    1000000000: 'B', // Billion
    1000000: 'M', // Million
    1000: 'K', // Thousand
  };

  // Convert the value to a string representation with the appropriate unit
  return units.entries
      .map((e) =>
          '${value ~/ e.key}${e.value}') // Perform integer division and concatenate the unit abbreviation
      .firstWhere((e) => !e.startsWith('0'),
          orElse: () =>
              '$value'); // Remove leading zeros, or return the original value if all zeros
}
