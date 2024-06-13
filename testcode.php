<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Total Harga dengan Kilogram</title>
</head>
<body>
    <h2>Hitung Total Harga dengan Kilogram</h2>
    <form>
        Harga per kilogram: <input type="text" id="harga_per_kg" name="harga_per_kg" oninput="hitungTotalHarga()"><br>
        Berat (kg): <input type="text" id="berat_kg" name="berat_kg" oninput="hitungTotalHarga()"><br>
        Total Harga: <span id="total_harga"></span><br>
    </form>

    <script>
        function hitungTotalHarga() {
            var harga_per_kg = parseFloat(document.getElementById('harga_per_kg').value);
            var berat_kg = parseFloat(document.getElementById('berat_kg').value);

            if (!isNaN(harga_per_kg) && !isNaN(berat_kg)) {
                var total_harga = harga_per_kg * berat_kg;
                document.getElementById('total_harga').textContent = 'Rp ' + total_harga.toFixed(2);
            } else {
                document.getElementById('total_harga').textContent = 'Masukkan angka yang valid untuk harga per kilogram dan berat.';
            }
        }
    </script>
</body>
</html>