data Student = Student {imie :: String,
                        nazwisko :: String,
                        nrAlbumu :: Int
                        } deriving Show

karo :: Student
karo = Student {imie = "Karo", nazwisko = "Karo", nrAlbumu = 123}