package model

class Ebook(
    id: String,
    judul: String,
    tahunTerbit: Int,
    val ukuranMb: Double,
    val format: String
) : Item(id, judul, tahunTerbit) {
    override fun deskripsi(): String =
        "[E-BOOK] $judul ($tahunTerbit) — Format: $format | Ukuran: $ukuranMb MB"
}