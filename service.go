package main

type SpellService struct {
	spells map[int]Spell
	nextID int
}

func NewSpellService() *SpellService {
	return &SpellService{spells: make(map[int]Spell), nextID: 1}
}

func (s *SpellService) FindAll() []Spell {
	result := make([]Spell, 0, len(s.spells))
	for _, spell := range s.spells {
		result = append(result, spell)
	}
	return result
}
