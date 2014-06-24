
;(function() {
"use strict";

window.Card = Class.extend({
	id: -1,
	number: 0,
	name: '',
	treatedAs: '',
	cardType: '',
	type: '',
	imageUrl: '',
	text: '',
	limit: 0
});

window.MonsterCard = Card.extend({
	attribute: '',
	atk: '',
	def: '',
	level: 0
});

window.TokenMonsterCard = MonsterCard.extend({});
window.EffectMonsterCard = MonsterCard.extend({});
window.NormalMonsterCard = MonsterCard.extend({});
window.SynchroMonsterCard = MonsterCard.extend({});
window.FusionMonsterCard = MonsterCard.extend({});
window.XYZMonsterCard = MonsterCard.extend({});
window.RitualMonsterCard = MonsterCard.extend({});

window.STCard = Card.extend({
	type: ''
});

window.SpellCard = STCard.extend({});
window.TrapCard = STCard.extend({});

window.createCard = function(data) {
	console.assert(data.length === 16);
	if (data[0] === '-1')
		return window.createToken();

	var type = data[5], card = null;
	if (type === 'effect')
		card = new EffectMonsterCard;
	else if (type === 'normal')
		card = new NormalMonsterCard;
	else if (type === 'synchro')
		card = new SynchroMonsterCard;
	else if (type === 'xyz')
		card = new XYZMonsterCard;
	else if (type === 'ritual')
		card = new RitualMonsterCard;
	else if (type === 'fusion')
		card = new FusionMonsterCard;
	else if (type === 'spell')
		card = new SpellCard;
	else if (type === 'trap')
		card = new TrapCard;
	console.assert(card);

	card.id = +data[0];
	card.number = +data[1];
	card.name = data[2];
	card.imageUrl = UrlBase + "images/cards/" + data[3];
	card.treatedAs = data[4];
	card.cardType = type;
	card.type = data[6];
	card.text = data[8];
	card.limit = +data[12];
	if (card instanceof MonsterCard) {
		card.attribute = data[7];
		card.atk = data[9];
		card.def = data[10];
		card.level = +data[11];
	}
	return card;
};

window.createToken = function() {
	var card = new TokenMonsterCard();
	card.imageUrl = "img/duel/token.jpg";
	card.name = "Token";
	card.atk = card.def = '?';
	return card;
};

})();
