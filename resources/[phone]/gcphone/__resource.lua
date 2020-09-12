
ui_page 'html/index.html'

files {
	'html/index.html',
	'html/static/css/app.css',
	'html/static/js/app.js',
	'html/static/js/manifest.js',
	'html/static/js/vendor.js',

	'html/static/config/config.json',
	
	-- Coque
	'html/static/img/coque/s8.png',
	'html/static/img/coque/iphonex.png',
	'html/static/img/coque/base.png',
	'html/static/img/coque/transparent.png',
	'html/static/img/coque/bleu.png',
	'html/static/img/coque/blanc.png',
	'html/static/img/coque/jaune.png',
	'html/static/img/coque/leopard.png',
	'html/static/img/coque/noir.png',
	'html/static/img/coque/or.png',
	'html/static/img/coque/rose.png',
	'html/static/img/coque/rouge.png',
	'html/static/img/coque/vert.png',
	'html/static/img/coque/violet.png',
	'html/static/img/coque/zebre.png',
	'html/static/img/background/photo_gcphone.jpg',
	
	
	-- Background
	'html/static/img/background/back001.jpg',
	'html/static/img/background/back002.jpg',
	'html/static/img/background/back003.jpg',
	'html/static/img/background/back004.jpg',
	'html/static/img/background/back005.jpg',
	'html/static/img/background/back006.jpg',
	'html/static/img/background/back007.jpg',
	'html/static/img/background/back008.jpg',
	'html/static/img/background/back009.jpg',
	'html/static/img/background/back010.jpg',
	'html/static/img/background/back011.jpg',
	'html/static/img/background/back012.jpg',
	'html/static/img/background/01.jpg',
	'html/static/img/background/02.jpg',
	'html/static/img/background/03.jpg',
	'html/static/img/background/04.jpg',
	'html/static/img/background/05.jpg',
	'html/static/img/background/06.jpg',
	'html/static/img/background/07.jpg',
	'html/static/img/background/08.jpg',
	'html/static/img/background/09.jpg',
	'html/static/img/background/10.jpg',
	'html/static/img/background/11.jpg',
	'html/static/img/background/12.jpg',
	'html/static/img/background/13.jpg',
	'html/static/img/background/14.jpg',
	'html/static/img/background/15.jpg',
	'html/static/img/background/16.jpg',
	'html/static/img/background/17.jpg',
	'html/static/img/background/18.jpg',
	'html/static/img/background/19.jpg',
	'html/static/img/background/20.jpg',
	'html/static/img/background/21.jpg',
	'html/static/img/background/22.jpg',
	
	'html/static/img/icons_app/call.png',
	'html/static/img/icons_app/contacts.png',
	'html/static/img/icons_app/sms.png',
	'html/static/img/icons_app/settings.png',
	'html/static/img/icons_app/menu.png',
	'html/static/img/icons_app/bourse.png',
	'html/static/img/icons_app/tchat.png',
	'html/static/img/icons_app/photo.png',
	'html/static/img/icons_app/armurier.png',
	'html/static/img/icons_app/epicerie.png',
	'html/static/img/icons_app/bahama.png',
	'html/static/img/icons_app/bank.png',
	'html/static/img/icons_app/policier.png',
	'html/static/img/icons_app/ambulancier.png',
	'html/static/img/icons_app/mecano.png',
	'html/static/img/icons_app/conces.png',
	'html/static/img/icons_app/pdm.png',
	'html/static/img/icons_app/securitas.png',
	'html/static/img/icons_app/brinks.png',
	'html/static/img/icons_app/avocat.png',
	'html/static/img/icons_app/burger.png',
	'html/static/img/icons_app/sheriff.png',
	'html/static/img/icons_app/taxi.png',
	'html/static/img/icons_app/agent.png',
	'html/static/img/icons_app/army.png',
	'html/static/img/icons_app/bahama.png',
	'html/static/img/icons_app/epicerie.png',
	'html/static/img/icons_app/fib.png',
	'html/static/img/icons_app/journaliste.png',
	'html/static/img/icons_app/pilot.png',
	'html/static/img/icons_app/airlines.png',
	'html/static/img/icons_app/brasseur.png',
	'html/static/img/icons_app/fermier.png',
	'html/static/img/icons_app/vignerons.png',
	'html/static/img/icons_app/tabac.png',
	'html/static/img/icons_app/state.png',
	'html/static/img/icons_app/unicorn.png',
	'html/static/img/icons_app/conces.png',
	'html/static/img/icons_app/9gag.png',
	'html/static/img/icons_app/twitter.png',
	
	
	'html/static/img/app_bank/logo_mazebank.jpg',

	'html/static/img/app_tchat/splashtchat.png',

	'html/static/img/twitter/bird.png',
	'html/static/img/twitter/default_profile.png',
	'html/static/sound/Twitter_Sound_Effect.ogg',

	'html/static/img/courbure.png',
	'html/static/fonts/fontawesome-webfont.ttf',

	'html/static/sound/ring.ogg',
	'html/static/sound/ring2.ogg',
	'html/static/sound/tchatNotification.ogg',
	'html/static/sound/Phone_Call_Sound_Effect.ogg',

}

client_script {
	"config.lua",
	"client/animation.lua",
	"client/client.lua",

	"client/photo.lua",
	"client/app_tchat.lua",
	"client/bank.lua",
	"client/twitter.lua"
}

server_script {
	'@mysql-async/lib/MySQL.lua',
	"config.lua",
	"server/server.lua",

	"server/app_tchat.lua",
	"server/twitter.lua"
}
