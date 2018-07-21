
var data =[
    {img:1,h2:'Plants Knowledge',dt1:'铁树',dd1:'铁树（拉丁学名Cycas revoluta Thunb）学名苏铁，别名是辟火蕉、凤尾蕉、凤尾松、凤尾草， 是苏铁科、苏铁属植物。',dt2:'价值',dd2:'苏铁为优美的观赏树种，栽培极为普遍，茎内含淀粉，可供食用；种子含油和丰富的淀粉，微有毒，供食用和药用，有治痢疾、止咳和止血之效。'},
    {img:2,h2:'Plants Knowledge',dt1:'金黄百合竹',dd1:'金黄百合竹，学名是Dracaena reflexa ‘Song of Jamaica’，科属为龙舌兰科龙血树属。',dt2:'价值',dd2:''},
    {img:3,h2:'Plants Knowledge',dt1:'美丽散尾葵',dd1:'美丽散尾葵，棕榈科，拉丁名是Chrysalidocarpus decipiens Becc.。',dt2:'价值',dd2:'常用于观赏'},
    {img:4,h2:'Plants Knowledge',dt1:'牡丹',dd1:'牡丹（学名：Paeonia suffruticosa Andr.）是毛茛科、芍药属植物，为多年生落叶灌木。',dt2:'价值',dd2:'具有观赏价值，也食用、入药。丹皮性微寒，味苦、辛。归心、肝、肾经。清热凉血，活血化瘀。'},
    {img:5,h2:'Plants Knowledge',dt1:'竹',dd1:'竹子，又名竹。品种繁多，有箭竹（arrow bamboo）[1]  等。多年生禾本科竹亚科植物，茎为木质，是禾本科的一个分支，学名 Bambusoideae（Bambusaceae或Bamboo），在热带、亚热带地区，东亚、东南亚和印度洋及太平洋岛屿上分布最集中，种类很多，有的低矮似草，有的高如大树，生长迅速。',dt2:'价值',dd2:'可用于观赏、食用、入药、科技等。'}];

var g= function  (id) {
    if(id.substr(0,1)=='.'){
        return document.getElementsByClassName(id.substr(1));

    }
    return document.getElementById(id);
}
function addSliders(){
    var tpl_main = g('template_main').innerHTML
        .replace(/^\s*/,'')
        .replace(/\s*$/,'');
    var tpl_ctrl = g('template_ctrl').innerHTML
        .replace(/^\s*/,'')
        .replace(/\s*$/,'');
    var out_main = [];
    var out_ctrl = [];

    for ( i in data){
        var _html_main = tpl_main
            .replace(/{{index}}/g,data[i].img)
            .replace(/{{h2}}/g,data[i].h2)
            .replace(/{{a}}/g,data[i].dt1)
            .replace(/{{b}}/g,data[i].dd1)
            .replace(/{{c}}/g,data[i].dt2)
            .replace(/{{d}}/g,data[i].dd2)

        var _html_ctrl = tpl_ctrl
            .replace(/{{index}}/g,data[i].img);
        out_main.push(_html_main);
        out_ctrl.push(_html_ctrl);
    }
    g('template_main').innerHTML =out_main.join('');
    g('template_ctrl').innerHTML =out_ctrl.join('');
}

function switchSlider(n){
    var main = g('main_'+n);
    var ctrl = g('ctrl_'+n);

    var clear_main = g('.main-i');
    var clear_ctrl = g('.ctrl-i');

    for(i=0;i<clear_ctrl.length;i++){
        clear_main[i].className = clear_main[i].className
            .replace(' main-i_active','');
        clear_ctrl[i].className = clear_ctrl[i].className
            .replace(' ctrl-i_active','');
    }

    main.className +=' main-i_active';
    ctrl.className +=' ctrl-i_active';


}

window.onload = function(){
    addSliders();
    switchSlider(1);
}
