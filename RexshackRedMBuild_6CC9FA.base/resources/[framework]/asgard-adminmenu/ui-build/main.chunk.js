(window.webpackJsonp = window.webpackJsonp || []).push([
    [0], {
        114: function(e, t, a) {
            e.exports = a(115)
        },
        115: function(e, t, a) {
            "use strict";
            a.r(t),
                function(e) {
                    var t = a(0),
                        n = a.n(t),
                        l = a(13),
                        o = a.n(l),
                        r = a(70),
                        i = a(37),
                        c = a(16);
                    a(126), a(127);
                    o.a.render(n.a.createElement(c.a, null, n.a.createElement(r.default, null)), document.getElementById("root")), i.a && e.hot && e.hot.accept("./components/App", function() {
                        var e = a(70).default;
                        o.a.render(n.a.createElement(c.a, null, n.a.createElement(e, null)), document.getElementById("root"))
                    })
                }.call(this, a(116)(e))
        },
        126: function(e, t, a) {},
        16: function(e, t, a) {
            "use strict";
            a.d(t, "b", function() {
                return m
            }), a.d(t, "c", function() {
                return u
            }), a.d(t, "a", function() {
                return h
            });
            var n = a(7),
                l = a(85),
                o = a(0),
                r = a.n(o),
                i = a(37),
                c = Object(o.createContext)(),
                s = Object(o.createContext)(),
                m = function() {
                    return Object(o.useContext)(c)
                },
                u = function() {
                    return Object(o.useContext)(s)
                },
                d = function(e, t) {
                    return Object(l.a)(e, function(e) {
                        return t(e)
                    })
                },
                h = function(e) {
                    var t = e.children,
                        a = Object(o.useReducer)(d, i.c),
                        l = Object(n.a)(a, 2),
                        m = l[0],
                        u = l[1],
                        h = Object(o.useMemo)(function() {
                            return function(e, t) {
                                var a = {},
                                    n = function(n) {
                                        a[n] = function() {
                                            for (var a = arguments.length, l = new Array(a), o = 0; o < a; o++) l[o] = arguments[o];
                                            var r = e[n];
                                            t(function(e) {
                                                return r.apply(void 0, [e].concat(l))
                                            })
                                        }
                                    };
                                for (var l in e) n(l);
                                return a
                            }(i.b, u)
                        }, [u]);
                    return r.a.createElement(c.Provider, {
                        value: h
                    }, r.a.createElement(s.Provider, {
                        value: m
                    }, t))
                }
        },
        37: function(e, t, a) {
            "use strict";
            var n = a(20);
            Object(n.b)(), a(0), a(16), a(44);
            a.d(t, "a", function() {
                return l
            }), a.d(t, "c", function() {
                return o
            }), a.d(t, "b", function() {
                return r
            });
            var l = !1,
                o = {
                    shown: l,
                    showUI: !1,
                    NotifySmall: !1,
                    overlays: [],
                    OverlayId: 0,
                    UpdatedMessages: [],
                    Favorites: []
                },
                r = {
                    showUI: function(e, t) {
                        e.showUI = !e.showUI
                    },
                    setContactsData: function(e, t) {
                        e.contactsData = t
                    },
                    setFavorites: function(e, t) {
                        e.Favorites = t
                    },
                    setNotifyShow: function(e, t) {
                        e.NotifySmall = !e.NotifySmall
                    },
                    setOverlays: function(e, t) {
                        for (var a = e.overlays, n = 0; n < a.length; n++)
                            if (a[n].id == t) {
                                a.splice(n, 1);
                                break
                            }
                    },
                    updateMessage: function(e, t) {
                        e.UpdatedMessages = t.messages
                    },
                    addShowNotify: function(e, t) {
                        var a = e.overlays.length + 1;
                        !0 === t.perma && (a = t.id), e.overlays.push({
                            id: a,
                            header: t.title,
                            content: t.description,
                            icon: t.icon,
                            iconColor: "#fff",
                            bgColor: t.background,
                            perma: t.perma,
                            buttons: t.buttons,
                            callnotif: t.callNotify
                        })
                    }
                }
        },
        44: function(e, t, a) {
            "use strict";
            a.d(t, "a", function() {
                return o
            });
            var n = a(34),
                l = (a(0), a(16)),
                o = function() {
                    var e = Object(l.b)().setOverlays,
                        t = (Object(l.b)().setOverlayId, Object(l.c)().overlays);
                    Object(l.c)().OverlayId;
                    return {
                        overlays: t,
                        addOverlay: function(a) {
                            e([].concat(Object(n.a)(t), [a]))
                        },
                        deleteOverlay: function(t) {
                            e(t)
                        }
                    }
                }
        },
        70: function(e, t, a) {
            "use strict";
            a.r(t);
            var n = a(0),
                l = a.n(n),
                o = a(53),
                r = a(15),
                i = a(16),
                c = a(86),
                s = a(34),
                m = a(7),
                u = a(21),
                d = a(181),
                h = a(165),
                f = a(166),
                p = a(168),
                y = a(169),
                v = a(170),
                g = a(171),
                b = a(172),
                E = a(173),
                O = a(128),
                C = a(174),
                S = a(175),
                N = a(187),
                j = a(176),
                w = a(177),
                T = a(178),
                P = a(14),
                k = a(94),
                I = a(17),
                L = a(180);
            var x = a(167),
                D = (a(37), a(159)),
                B = a(182),
                A = Object(D.a)(function(e) {
                    var t;
                    return {
                        card: {
                            marginBottom: "2vh",
                            backgroundColor: "#3c3c3c",
                            height: "5.4vh",
                            borderRadius: "25",
                            color: "white",
                            borderBottom: "0.01vmin solid white",
                            borderTopLeftRadius: "0.2vmin",
                            borderTopRightRadius: "0.2vmin",
                            "&:after": {
                                opacity: "1"
                            },
                            "&:hover:after": {
                                position: "absolute",
                                width: " 100%",
                                height: "100%",
                                top: "0",
                                left: "0",
                                background: "rgba(0, 0, 0, 0.815)",
                                opacity: "0",
                                transition: "all 0.1s"
                            },
                            padding: 0,
                            "&:last-child": {
                                paddingBottom: 0
                            }
                        },
                        CardContent: {
                            padding: 0,
                            "&:last-child": {
                                paddingBottom: 0
                            }
                        },
                        root: (t = {
                            "& .MuiInput-root": {
                                color: "white",
                                fontSize: "1.3vmin"
                            },
                            "& .MuiInput-underline:hover:not(.Mui-disabled):before": {
                                borderColor: "darkgray"
                            },
                            "& .MuiInput-underline:before": {
                                borderColor: "darkgray",
                                color: "blue"
                            },
                            "& .MuiInput-underline:after": {
                                borderColor: "white",
                                color: "blue"
                            }
                        }, Object(u.a)(t, "& .MuiInput-underline:after", {
                            borderColor: "white",
                            color: "blue"
                        }), Object(u.a)(t, "& .MuiInputLabel-animated", {
                            color: "darkgray",
                            fontSize: "1.5vmin"
                        }), Object(u.a)(t, "& .MuiInputAdornment-root", {
                            color: "darkgray"
                        }), Object(u.a)(t, "& .MuiFormHelperText-root", {
                            color: "darkgray"
                        }), Object(u.a)(t, "& .MuiAccordionSummary-content", {
                            margin: "0"
                        }), Object(u.a)(t, "& .MuiAccordionSummary-content.Mui-expanded", {
                            margin: "0"
                        }), Object(u.a)(t, "& .MuiAccordionSummary-root", {
                            padding: "0"
                        }), t)
                    }
                }),
                M = function() {
                    var e, t = A(),
                        a = Object(n.useState)(!0),
                        o = Object(m.a)(a, 2),
                        D = (o[0], o[1], l.a.useRef(null)),
                        M = Object(n.useState)([]),
                        J = Object(m.a)(M, 2),
                        U = J[0],
                        z = J[1],
                        G = Object(n.useState)([]),
                        V = Object(m.a)(G, 2),
                        H = V[0],
                        F = (V[1], l.a.useState("")),
                        W = Object(m.a)(F, 2),
                        K = W[0],
                        X = W[1],
                        Y = l.a.useState([]),
                        Z = Object(m.a)(Y, 2),
                        $ = Z[0],
                        q = Z[1],
                        Q = l.a.useState([{
                            Name: "Extra Sunny",
                            Value: "EXTRASUNNY"
                        }, {
                            Name: "Clear",
                            Value: "CLEAR"
                        }, {
                            Name: "Neutral",
                            Value: "NEUTRAL"
                        }, {
                            Name: "Smog",
                            Value: "SMOG"
                        }, {
                            Name: "Foggy",
                            Value: "FOGGY"
                        }, {
                            Name: "Overcast",
                            Value: "OVERCAST"
                        }, {
                            Name: "Clouds",
                            Value: "CLOUDS"
                        }, {
                            Name: "Clearing",
                            Value: "CLEARING"
                        }, {
                            Name: "Rain",
                            Value: "RAIN"
                        }, {
                            Name: "Thunder",
                            Value: "THUNDER"
                        }, {
                            Name: "Snow",
                            Value: "SNOW"
                        }, {
                            Name: "Blizzard",
                            Value: "BLIZZARD"
                        }, {
                            Name: "Snow Light",
                            Value: "SNOWLIGHT"
                        }, {
                            Name: "XMAS",
                            Value: "XMAS"
                        }, {
                            Name: "Halloween",
                            Value: "HALLOWEEN"
                        }]),
                        _ = Object(m.a)(Q, 2),
                        ee = _[0],
                        te = (_[1], l.a.useState([])),
                        ae = Object(m.a)(te, 2),
                        ne = ae[0],
                        le = ae[1],
                        oe = l.a.useState([]),
                        re = Object(m.a)(oe, 2),
                        ie = re[0],
                        ce = re[1],
                        se = (l.a.useRef(!0), l.a.useState("")),
                        me = Object(m.a)(se, 2),
                        ue = me[0],
                        de = me[1],
                        he = l.a.useState("All"),
                        fe = Object(m.a)(he, 2),
                        pe = fe[0],
                        ye = fe[1],
                        ve = Object(n.useState)(""),
                        ge = Object(m.a)(ve, 2),
                        be = ge[0],
                        Ee = ge[1],
                        Oe = Object(n.useState)([]),
                        Ce = Object(m.a)(Oe, 2),
                        Se = (Ce[0], Ce[1], Object(n.useState)(0)),
                        Ne = Object(m.a)(Se, 2),
                        je = Ne[0],
                        we = Ne[1],
                        Te = Object(n.useState)(""),
                        Pe = Object(m.a)(Te, 2),
                        ke = Pe[0],
                        Ie = Pe[1],
                        Le = Object(n.useState)([]),
                        xe = Object(m.a)(Le, 2),
                        De = xe[0],
                        Be = xe[1],
                        Ae = Object(n.useState)(""),
                        Me = Object(m.a)(Ae, 2),
                        Je = Me[0],
                        Ue = Me[1],
                        Re = Object(n.useState)(""),
                        ze = Object(m.a)(Re, 2),
                        Ge = (ze[0], ze[1], Object(n.useState)([])),
                        Ve = Object(m.a)(Ge, 2),
                        He = (Ve[0], Ve[1]),
                        Fe = Object(n.useState)("Main"),
                        We = Object(m.a)(Fe, 2),
                        Ke = We[0],
                        Xe = We[1],
                        Ye = Object(n.useState)(1),
                        Ze = Object(m.a)(Ye, 2),
                        $e = Ze[0],
                        qe = Ze[1],
                        Qe = Object(n.useState)(!1),
                        _e = Object(m.a)(Qe, 2),
                        et = _e[0],
                        tt = _e[1],
                        at = Object(n.useState)([]),
                        nt = Object(m.a)(at, 2),
                        lt = nt[0],
                        ot = nt[1],
                        rt = Object(n.useState)(!1),
                        it = Object(m.a)(rt, 2),
                        ct = it[0],
                        st = it[1],
                        mt = (Object(i.b)().addShowNotify, Object(n.useState)([])),
                        ut = Object(m.a)(mt, 2),
                        dt = ut[0],
                        ht = ut[1],
                        ft = Object(n.useState)([]),
                        pt = Object(m.a)(ft, 2),
                        yt = pt[0],
                        vt = pt[1],
                        gt = Object(n.useState)([]),
                        bt = Object(m.a)(gt, 2),
                        Et = bt[0],
                        Ot = bt[1],
                        Ct = l.a.useState([]),
                        St = Object(m.a)(Ct, 2),
                        Nt = St[0],
                        jt = St[1],
                        wt = l.a.useState([{
                            DisplayName: "nmig",
                            PlayerID: 1,
                            Steam: "STEAMSAD"
                        }]),
                        Tt = Object(m.a)(wt, 2),
                        Pt = Tt[0],
                        kt = Tt[1],
                        It = l.a.useState(""),
                        Lt = Object(m.a)(It, 2),
                        xt = Lt[0],
                        Dt = Lt[1],
                        Bt = l.a.useState(""),
                        At = Object(m.a)(Bt, 2),
                        Mt = At[0],
                        Jt = At[1],
                        Ut = l.a.useState(""),
                        Rt = Object(m.a)(Ut, 2),
                        zt = Rt[0],
                        Gt = Rt[1],
                        Vt = l.a.useState([]),
                        Ht = Object(m.a)(Vt, 2),
                        Ft = Ht[0],
                        Wt = Ht[1],
                        Kt = Object(n.useState)([{
                            Display: "Bring",
                            value: "bring",
                            Category: "Player"
                        }, {
                            Display: "Ban",
                            value: "ban",
                            Category: "User"
                        }, {
                            Display: "Kick",
                            value: "kick",
                            Category: "User"
                        }, {
                            Display: "Noclip",
                            value: "noclip",
                            Category: "Player"
                        }, {
                            Display: "Player Blips",
                            value: "playerblips",
                            Category: "Utility"
                        }, {
                            Display: "Change Model",
                            value: "changemodel",
                            Category: "Utility"
                        }, {
                            Display: "Spawn Horse",
                            value: "SpawnHorse",
                            Category: "Utility"
                        }, {
                            Display: "God",
                            value: "godmode",
                            Category: "Player"
                        }, {
                            Display: "Super Jump",
                            value: "superjump",
                            Category: "Player"
                        }, {
                            Display: "Teleport Coords",
                            value: "tpcoords",
                            Category: "Player"
                        }, {
                            Display: "Teleport Marker",
                            value: "tpm",
                            Category: "Player"
                        }, {
                            Display: "Attach",
                            value: "attach",
                            Category: "Player"
                        }, {
                            Display: "Spawn Item",
                            value: "spawnitem",
                            Category: "Utility"
                        }, {
                            Display: "Revive",
                            value: "revinradius",
                            Category: "Player"
                        }, {
                            Display: "cSay",
                            value: "csay",
                            Category: "Utility"
                        }, {
                            Display: "tSay",
                            value: "tsay",
                            Category: "Utility"
                        }, {
                            Display: "Give Cash",
                            value: "givecash",
                            Category: "Utility"
                        }, {
                            Display: "Time change",
                            value: "weathertime",
                            Category: "Utility"
                        }, {
                            Display: "View Stable",
                            value: "stable",
                            Category: "Utility"
                        }, {
                            Display: "Open Clothes Menu",
                            value: "clothes",
                            Category: "Utility"
                        }, {
                            Display: "Remove Stress",
                            value: "stress",
                            Category: "Utility"
                        }]),
                        Xt = Object(m.a)(Kt, 2),
                        Yt = Xt[0];
                    Xt[1];

                    function Zt(e) {
                        var t = !1;
                        !1 === qt.filter(function(t) {
                            return t.id === e
                        })[0].html && (t = !0), !0 === t && !1 !== qt.filter(function(t) {
                            return t.id === e
                        })[0].toggle ? function(e) {
                            if (H[e] = !H[e], ("ban" === e || "kick" === e) && null === U) return;
                            $t(e.toLowerCase()), ht(function(e) {
                                return Object(s.a)(e)
                            })
                        }(e) : !0 === t && !1 === qt.filter(function(t) {
                            return t.id === e
                        })[0].toggle ? $t(e) : ea(e)
                    }

                    function $t(e) {
                        "bring" === e ? fetch("https://asgard-adminmenu/bringPlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                PlayerID: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "weathertime" === e ? fetch("https://asgard-adminmenu/setWeather", {
                            method: "POST",
                            body: JSON.stringify({
                                time: je,
                                weather: ie.Value
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "selectEntity" === e ? fetch("https://asgard-adminmenu/selectEntity", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "deleteEntity" === e ? fetch("https://asgard-adminmenu/deleteEntity", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "noclip" === e ? fetch("https://asgard-adminmenu/Noclip", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "givecash" === e ? fetch("https://asgard-adminmenu/GiveCash", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID,
                                amount: Number(ke)
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "godmode" === e ? fetch("https://asgard-adminmenu/GodModeToggle", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "superjump" === e ? fetch("https://asgard-adminmenu/SuperJump", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "ban" === e ? fetch("https://asgard-adminmenu/BanPlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID,
                                reason: ke,
                                length: Date.parse(K) / 1e3
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "kick" === e ? fetch("https://asgard-adminmenu/Kick", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID,
                                reason: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "spawn" === e ? fetch("https://asgard-adminmenu/SpawnItem", {
                            method: "POST",
                            body: JSON.stringify({
                                item: ne.name,
                                amount: $e
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "attachplayer" === e ? fetch("https://asgard-adminmenu/AttachPlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "fixvehicle" === e ? fetch("https://asgard-adminmenu/FixVehicle", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "playerblips" === e ? fetch("https://asgard-adminmenu/playerblips", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "stable" === e ? fetch("https://asgard-adminmenu/OpenStable", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "clothes" === e ? fetch("https://asgard-adminmenu/OpenClothingMenu", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "stress" === e ? fetch("https://asgard-adminmenu/RemoveStress", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "reviveplayer" === e ? fetch("https://asgard-adminmenu/RevivePlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "changemodel" === e ? fetch("https://asgard-adminmenu/ChangeModel", {
                            method: "POST",
                            body: JSON.stringify({
                                model: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "SpawnHorse" === e ? fetch("https://asgard-adminmenu/SpawnHorse", {
                            method: "POST",
                            body: JSON.stringify({
                                horsename: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "tpcoords" === e ? fetch("https://asgard-adminmenu/TeleportToCoords", {
                            method: "POST",
                            body: JSON.stringify({
                                coords: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "tpm" === e ? fetch("https://asgard-adminmenu/TeleportToMarker", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "attach" === e ? fetch("https://asgard-adminmenu/Spectate", {
                            method: "POST",
                            body: JSON.stringify({
                                target: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "csay" === e ? fetch("https://asgard-adminmenu/Csay", {
                            method: "POST",
                            body: JSON.stringify({
                                text: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "tsay" === e && fetch("https://asgard-adminmenu/tSay", {
                            method: "POST",
                            body: JSON.stringify({
                                text: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }), Ie("")
                    }
                    Object(n.useEffect)(function() {
                        window.addEventListener("message", function(e) {
                            "open" === e.data.type && (console.log("AsgardAdmin all rights reserved to AsgardScripts/TumbleweedRP"), ce({
                                Name: "Very Sunny"
                            }), jt(Yt), Yt.map(function(e) {
                                ht(function(t) {
                                    return [].concat(Object(s.a)(t), [{
                                        id: e.value,
                                        open: !1
                                    }])
                                }), Wt(Pt)
                            }), fetch("https://asgard-adminmenu/GetBannedPlayers", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                Be(e)
                            }), fetch("https://asgard-adminmenu/DevmodeStatus", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                Qt = e, document.getElementById("devmode").style.color = !1 === Qt ? "white" : "red"
                            }), fetch("https://asgard-adminmenu/getOnlinePlayers", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                kt(e), Wt(e), z({
                                    PlayerID: e[0].PlayerID,
                                    DisplayName: e[0].DisplayName,
                                    Steam: e[0].Steam
                                })
                            }), fetch("https://asgard-adminmenu/GetItems", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                q(e), le(e[0])
                            }), fetch("https://asgard-adminmenu/GetPlayerData", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                ot(JSON.parse(e[0].favorite))
                            }), console.log("[quotus-admin] Loaded!"), st(!0), Wt(Pt), fetch("https://asgard-adminmenu/GetLogs", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                vt(e), Ot(e)
                            }))
                        })
                    }, []), Object(n.useEffect)(function() {
                        !0 === ct && ("Main" === Ke && !0 === et && (document.getElementsByClassName("HeaderActions")[0].style.left = "4.0%", document.getElementsByClassName("CategoryOptions")[0].style.width = "95%", document.getElementsByClassName("CategoryOptions")[0].style.marginLeft = "4.4vh", document.getElementById("inputsearch").style.width = "99vh"), "List" === Ke && (document.getElementsByClassName("ListPlayers")[0].style.left = !0 === et ? "49.5%" : "52.5%"))
                    }, [Ke]);
                    var qt = [{
                            id: "bring",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("bring")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Bring"))
                        }, {
                            id: "givecash",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                type: "number",
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Amount ($)",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("givecash")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Give Cash"))
                        }, {
                            id: "tpcoords",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Coords (1.1 , 1.1 , 1.1)",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("tpcoords")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Teleport"))
                        }, {
                            id: "changemodel",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Model",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("changemodel")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Change Model"))
                        }, {
                        id: "SpawnHorse",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Horse Model",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("SpawnHorse")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Spawn Horse"))
                        }, {
                            id: "noclip",
                            html: !1
                        }, {
                            id: "fixvehicle",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "playerblips",
                            html: !1
                        }, {
                            id: "stable",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "clothes",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "stress",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "godmode",
                            html: !1
                        }, {
                            id: "superjump",
                            html: !1
                        }, {
                            id: "tpm",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "revinradius",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("reviveplayer")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Revive"))
                        }, {
                            id: "attach",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("attach")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Spectate"))
                        }, {
                            id: "spawnitem",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: $,
                                onChange: function(e, t) {
                                    return le(t)
                                },
                                getOptionLabel: function(e) {
                                    return "".concat(e.displayname)
                                },
                                value: ne,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Item"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: $e,
                                type: "number",
                                placeholder: "Amount",
                                onChange: function(e) {
                                    qe(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("spawn")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Spawn Item"))
                        }, {
                            id: "weathertime",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: je,
                                type: "number",
                                label: "Time",
                                placeholder: "(only hour)",
                                onChange: function(e) {
                                    we(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%",
                                    marginTop: "1vh"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: ee,
                                onChange: function(e, t) {
                                    return ce(t)
                                },
                                getOptionLabel: function(e) {
                                    return "".concat(e.Name)
                                },
                                value: ie,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Weather"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("weathertime")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Change Weather / Time"))
                        }, {
                            id: "deleteentity",
                            html: l.a.createElement("div", null, l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("selectEntity")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh",
                                    marginRight: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Select Entity"), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("deleteEntity")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Delete Entity"))
                        }, {
                            id: "csay",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Message",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("csay")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "SUBMIT"))
                        }, {
                            id: "tsay",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Message",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("tsay")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "SUBMIT"))
                        }, {
                            id: "ban",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Reason",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(I.a, {
                                utils: k.a
                            }, l.a.createElement(L.a, {
                                disablePast: !0,
                                className: t.root,
                                style: {
                                    marginTop: "2vh",
                                    width: "100%"
                                },
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e))
                                },
                                label: "Length",
                                placeholder: "...",
                                value: K,
                                onChange: function(e) {
                                    X(e)
                                }
                            })), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("ban")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Ban"))
                        }, {
                            id: "kick",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Reason",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("kick")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Kick"))
                        }],
                        Qt = !1;
                    Object(n.useEffect)(function() {}, []), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = Yt.filter(function(e) {
                                return e.Display.toLowerCase().includes(be)
                            });
                            jt(e), 0 === be.length && jt(Yt)
                        }
                    }, [be]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = De.filter(function(e) {
                                return e.Steam.toLowerCase().includes(Je)
                            });
                            jt(e), 0 === Je.length && He(De)
                        }
                    }, [Je]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = Mt.toString().toLowerCase(),
                                t = Pt.filter(function(t) {
                                    return Object.keys(t).some(function(a) {
                                        return -1 !== t[a].toString().toLowerCase().search(e)
                                    })
                                });
                            Wt(t), 0 === Mt.length && Wt(Pt)
                        }
                    }, [Mt]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = xt.toString().toLowerCase(),
                                t = yt.filter(function(t) {
                                    return Object.keys(t).some(function(a) {
                                        return -1 !== t[a].toString().toLowerCase().search(e)
                                    })
                                });
                            Ot(t), 0 === xt.length && Ot(yt)
                        }
                    }, [xt]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = Pt.filter(function(e) {
                                return e.Steam.toString().toLowerCase().includes(zt)
                            });
                            Wt(e), 0 === zt.length && Wt(Pt)
                        }
                    }, [zt]);
                    var _t = Object(i.c)().showUI,
                        ea = (Object(i.c)().NotifySmall, Object(i.c)().overlays, function(e) {
                            var t = dt.map(function(t) {
                                return t.id === e ? Object(c.a)({}, t, {
                                    open: !t.open
                                }) : t
                            });
                            ht(t)
                        });

                    function ta(e, t) {
                        return e.filter(function(e) {
                            return e !== t
                        })
                    }
                    var ta = function(e, t) {
                        ot(function(e) {
                            return e.filter(function(e) {
                                return e.name !== t
                            })
                        }), e.stopPropagation()
                    };
                    Object(n.useEffect)(function() {
                        function e(e) {
                            27 == e.keyCode && (lt.length > 0 && fetch("https://asgard-adminmenu/setFav", {
                                method: "POST",
                                body: JSON.stringify({
                                    fav: lt
                                }),
                                headers: {
                                    "Content-Type": "application/json"
                                }
                            }), tt(!1))
                        }
                        return document.addEventListener("keydown", e),
                            function() {
                                document.removeEventListener("keydown", e)
                            }
                    }, [lt]);
                    var aa = "#9faeb3";
                    return l.a.createElement("div", null, ct ? l.a.createElement("div", null, l.a.createElement("div", {
                        ref: D,
                        class: "container disableSelection"
                    }, l.a.createElement(f.a, {
                        easing: {
                            enter: "cubic-bezier(0, 1.5, .8, 1)",
                            exit: "linear"
                        },
                        container: D,
                        in : _t,
                        mountOnEnter: !0,
                        unmountOnExit: !0
                    }, l.a.createElement("div", {
                        id: "admin-container",
                        className: "admin-container"
                    }, "Book" === Ke ? l.a.createElement("div", null, !0 === et ? l.a.createElement("div", null, l.a.createElement("div", {
                        className: "HeaderBanned",
                        style: {
                            left: "46.5%"
                        }
                    }, l.a.createElement(d.a, {
                        style: (e = {
                            top: "0vh",
                            width: "100vh",
                            position: "absolute"
                        }, Object(u.a)(e, "top", "50%"), Object(u.a)(e, "left", "50%"), Object(u.a)(e, "transform", "translate(-50% , -50%)"), e),
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: xt,
                        placeholder: "Search",
                        onChange: function(e) {
                            Dt(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    })), l.a.createElement("div", {
                        className: "LogsList"
                    }, l.a.createElement(p.a, {
                        style: {
                            maxHeight: "73vh"
                        }
                    }, l.a.createElement(y.a, {
                        sx: {
                            minWidth: 650
                        },
                        "aria-label": "simple table"
                    }, l.a.createElement(v.a, null, l.a.createElement(g.a, null, l.a.createElement(b.a, null, "ID"), l.a.createElement(b.a, {
                        align: "left"
                    }, "Name"), l.a.createElement(b.a, {
                        align: "left"
                    }, "Log"), l.a.createElement(b.a, {
                        align: "left"
                    }, "identifier"), l.a.createElement(b.a, {
                        align: "left"
                    }, "Date"))), l.a.createElement(E.a, null, Et.map(function(e) {
                        var t = 1e3 * Number(e.date),
                            a = new Date(t).toLocaleString();
                        return l.a.createElement(g.a, {
                            key: e.id,
                            sx: {
                                "&:last-child td, &:last-child th": {
                                    border: 0
                                }
                            }
                        }, l.a.createElement(b.a, {
                            align: "left"
                        }, e.id), l.a.createElement(b.a, {
                            align: "left"
                        }, e.name), l.a.createElement(b.a, {
                            align: "left"
                        }, e.log), l.a.createElement(b.a, {
                            align: "left"
                        }, e.Identifier), l.a.createElement(b.a, {
                            align: "left"
                        }, a))
                    })))))) : l.a.createElement("div", {
                        style: {
                            width: "80%",
                            fontSize: "2vw"
                        }
                    }, l.a.createElement(O.a, {
                        style: {
                            marginTop: "8vh",
                            width: "50%",
                            marginLeft: "13.5vh",
                            fontSize: "1vw",
                            color: "white"
                        }
                    }, "Sorry, you can't view this page on the small window mode, please expand it."), ",", " ")) : "", "Gavel" === Ke ? l.a.createElement("div", {
                        className: "LastBanned",
                        style: {
                            width: "100%"
                        }
                    }, function() {
                        var e;
                        return !0 === et ? l.a.createElement("div", {
                            className: "HeaderBanned"
                        }, l.a.createElement(d.a, {
                            style: (e = {
                                top: "0vh",
                                width: "100vh",
                                position: "absolute"
                            }, Object(u.a)(e, "top", "50%"), Object(u.a)(e, "left", "50%"), Object(u.a)(e, "transform", "translate(-50% , -50%)"), e),
                            id: "inputsearch",
                            autoComplete: "off",
                            className: t.root,
                            value: Je,
                            placeholder: "Search by steam",
                            onChange: function(e) {
                                Ue(e.target.value)
                            },
                            InputProps: {
                                startAdornment: l.a.createElement("div", {
                                    style: {
                                        marginLeft: "0.5vh"
                                    }
                                })
                            },
                            variant: "standard"
                        }), l.a.createElement("div", {
                            className: "BannedList"
                        }, l.a.createElement(p.a, {
                            style: {
                                maxHeight: "73vh"
                            }
                        }, l.a.createElement(y.a, {
                            sx: {
                                minWidth: 650
                            },
                            "aria-label": "simple table"
                        }, l.a.createElement(v.a, null, l.a.createElement(g.a, null, l.a.createElement(b.a, null, "ID"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Name"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Steam"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Reason"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Length"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Discord"), l.a.createElement(b.a, {
                            align: "left"
                        }, "IP"), l.a.createElement(b.a, {
                            align: "left"
                        }, "License"))), l.a.createElement(E.a, null, De.map(function(e) {
                            return l.a.createElement(g.a, {
                                key: e.name,
                                sx: {
                                    "&:last-child td, &:last-child th": {
                                        border: 0
                                    }
                                }
                            }, l.a.createElement(b.a, {
                                align: "left"
                            }, e.id), l.a.createElement(b.a, {
                                align: "left"
                            }, e.DisplayName), l.a.createElement(b.a, {
                                align: "left"
                            }, e.Steam), l.a.createElement(b.a, {
                                align: "left"
                            }, e.reason), l.a.createElement(b.a, {
                                align: "left"
                            }, e.length), l.a.createElement(b.a, {
                                align: "left"
                            }, e.discord), l.a.createElement(b.a, {
                                align: "left"
                            }, e.ip), l.a.createElement(b.a, {
                                align: "left"
                            }, e.license))
                        })))))) : l.a.createElement("div", {
                            style: {
                                width: "80%",
                                fontSize: "2vw"
                            }
                        }, l.a.createElement(O.a, {
                            style: {
                                marginTop: "8vh",
                                width: "50%",
                                marginLeft: "13.5vh",
                                fontSize: "1vw"
                            }
                        }, "Sorry, you can't view this page on the small window mode, please expand it."))
                    }()) : "", "Settings" === Ke ? l.a.createElement("div", {
                        className: "Settings"
                    }, l.a.createElement(C.a, null, l.a.createElement(S.a, {
                        label: "Label",
                        control: l.a.createElement(N.a, {
                            color: "primary",
                            defaultChecked: !0
                        })
                    }))) : "", "Main" === Ke ? l.a.createElement("div", {
                        className: "HeaderActions"
                    }, l.a.createElement(j.a, {
                        className: t.root,
                        value: pe,
                        style: {
                            position: "absolute !important",
                            top: "0vh"
                        },
                        onChange: function(e, t) {
                            var a;
                            ye(t), jt("All" === (a = t) ? Yt : Yt.filter(function(e) {
                                return e.Category === a
                            }))
                        }
                    }, l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "All",
                        value: "All"
                    }), l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "Player",
                        value: "Player"
                    }), l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "Utility",
                        value: "Utility"
                    }), l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "User",
                        value: "User"
                    })), l.a.createElement("br", null), l.a.createElement(d.a, {
                        style: {
                            marginTop: "1%"
                        },
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: be,
                        placeholder: "Begin typing to filter commands",
                        onChange: function(e) {
                            Ee(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    })) : "", null !== U && 0 !== U.length && "Main" === Ke ? l.a.createElement("div", {
                        className: "Pinned",
                        onClick: function() {
                            z(null)
                        }
                    }, l.a.createElement(O.a, {
                        variant: "body",
                        style: {
                            whiteSpace: "nowrap",
                            fontSize: "0.65vw !important",
                            marginLeft: "3.2vh"
                        }
                    }, "Current Target: (", U.PlayerID, ") ", U.DisplayName, " [", U.Steam, "]")) : "", "Main" === Ke ? l.a.createElement("div", {
                        className: "CategoryOptions",
                        style: {
                            width: "88%",
                            marginLeft: "4.3vh",
                            maxHeight: null === U ? "88%" : "83%"
                        }
                    }, l.a.createElement(x.a, {
                        style: {
                            marginTop: "1vh"
                        },
                        container: !0,
                        spacing: 1
                    }, function() {
                        var e = Nt.sort(function(e, t) {
                            return e.value.toLowerCase().localeCompare(t.value.toLowerCase())
                        }).sort(function(e, t) {
                            return !0 === JSON.stringify(lt).includes(e.value.toLowerCase()) ? -1 : 1
                        });
                        return Nt.length <= 0 ? void 0 : e.map(function(e) {
                            return aa = "#9faeb3" === aa ? "#d8dada" : "#9faeb3", !1 === qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html && !0, l.a.createElement(f.a, { in : !0
                            }, l.a.createElement(x.a, {
                                item: !0,
                                xs: 12
                            }, l.a.createElement("div", {
                                className: "ButtonOption",
                                onClick: function() {
                                    Zt(e.value)
                                },
                                style: {
                                    backgroundColor: !0 === H[e.value] ? "#81b38d" : aa
                                }
                            }, JSON.stringify(lt).includes(e.value.toLowerCase()) ? l.a.createElement(P.j, {
                                onClick: function(t) {
                                    ta(t, e.value)
                                },
                                style: {
                                    float: "left",
                                    marginLeft: "0.7vh",
                                    marginRight: "-1vh",
                                    color: "#eafb39"
                                }
                            }) : l.a.createElement(P.i, {
                                onClick: function(t) {
                                    ! function(e, t) {
                                        ot(function(e) {
                                            return [].concat(Object(s.a)(e), [{
                                                name: t
                                            }])
                                        }), e.stopPropagation()
                                    }(t, e.value)
                                },
                                style: {
                                    float: "left",
                                    marginLeft: "0.7vh",
                                    marginRight: "-1vh",
                                    color: "black"
                                }
                            }), !1 === qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html ? void 0 : dt.filter(function(t) {
                                return t.id === e.value
                            })[0].open ? l.a.createElement(P.b, {
                                style: {
                                    marginRight: "-1.5vh",
                                    position: "relative",
                                    left: !0 === et ? "95%" : "88%"
                                }
                            }) : l.a.createElement(P.a, {
                                style: {
                                    marginRight: "-1.5vh",
                                    position: "relative",
                                    left: !0 === et ? "95%" : "88%"
                                }
                            }), l.a.createElement(O.a, {
                                variant: "body2",
                                style: {
                                    marginLeft: "2vh"
                                }
                            }, e.Display)), !1 === qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html ? void 0 : l.a.createElement(T.a, {
                                transitionDuration: 5,
                                unmountOnExit: !0,
                                in : dt.filter(function(t) {
                                    return t.id === e.value
                                })[0].open,
                                style: {
                                    width: "100%"
                                }
                            }, l.a.createElement("div", {
                                style: {
                                    position: "relative",
                                    backgroundColor: "#6f6f6f",
                                    padding: "2vh",
                                    border: "none"
                                }
                            }, qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html))))
                        })
                    }())) : "", "List" === Ke ? l.a.createElement("div", {
                        className: "PlayersList"
                    }, l.a.createElement("div", {
                        className: "ListSearchHeader",
                        style: {
                            marginLeft: "2vh"
                        }
                    }, l.a.createElement(d.a, {
                        style: {
                            marginTop: "2vh",
                            width: "40%"
                        },
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: Mt,
                        placeholder: "Server ID",
                        onChange: function(e) {
                            Jt(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    }), l.a.createElement(d.a, {
                        style: {
                            marginTop: "2vh",
                            width: "45%"
                        },
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: zt,
                        placeholder: "Steam",
                        onChange: function(e) {
                            Gt(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    })), null !== U && 0 !== U.length ? l.a.createElement("div", {
                        style: {
                            marginTop: "2vh"
                        },
                        className: "Pinned",
                        onClick: function() {
                            z(null)
                        }
                    }, "Current Target: (", U.PlayerID, ") ", U.DisplayName) : "", l.a.createElement("div", {
                        className: "ListPlayers",
                        style: {
                            height: "75vh",
                            maxHeight: "75vh",
                            overflow: "auto"
                        }
                    }, Ft.map(function(e) {
                        return l.a.createElement("div", {
                            className: "PlayerElement",
                            style: {
                                whiteSpace: "nowrap"
                            }
                        }, l.a.createElement(O.a, {
                            style: {
                                position: "absolute",
                                left: "1%"
                            }
                        }, "(", e.PlayerID, ")"), l.a.createElement(O.a, {
                            style: {
                                position: "absolute",
                                left: "10%"
                            }
                        }, e.DisplayName), l.a.createElement(O.a, {
                            style: {
                                position: "absolute",
                                left: "47%"
                            }
                        }, e.Steam))
                    }))) : "", l.a.createElement("div", {
                        className: "buttons-container"
                    }, l.a.createElement("div", {
                        style: {
                            position: "absolute",
                            top: "50%",
                            left: "50%",
                            transform: "translate(-50%,-50%)"
                        }
                    }, l.a.createElement(x.a, {
                        container: !0,
                        spacing: 1
                    }, l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("Main")
                        },
                        style: {
                            backgroundColor: "Main" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.g, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("List")
                        },
                        style: {
                            backgroundColor: "List" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.h, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("Gavel")
                        },
                        style: {
                            backgroundColor: "Gavel" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.f, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("Book")
                        },
                        style: {
                            backgroundColor: "Book" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.c, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }))), l.a.createElement("div", {
                        style: {
                            position: "absolute",
                            top: "90%",
                            left: "50%",
                            transform: "translate(-50%,-50%)"
                        }
                    }, l.a.createElement(x.a, {
                        container: !0,
                        spacing: 1
                    }, l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        id: "devmode",
                        className: "sideButton",
                        onClick: function() {
                            fetch("https://asgard-adminmenu/DevmodeToggle", {
                                method: "POST",
                                body: JSON.stringify({}),
                                headers: {
                                    "Content-Type": "application/json"
                                }
                            }), fetch("https://asgard-adminmenu/DevmodeStatus", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                Qt = e, document.getElementById("devmode").style.color = !1 === Qt ? "white" : "red"
                            })
                        }
                    }, l.a.createElement(P.k, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        className: "sideButton"
                    }, l.a.createElement(P.d, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            !1 === et ? (tt(!0), document.getElementById("admin-container").style.left = "50%", document.getElementById("admin-container").style.width = "106vh", document.getElementsByClassName("buttons-container")[0].style.left = "1.8%", "Main" === Ke && (document.getElementsByClassName("HeaderActions")[0].style.left = "4.0%", document.getElementsByClassName("CategoryOptions")[0].style.width = "95%", document.getElementsByClassName("CategoryOptions")[0].style.marginLeft = "4.4vh", document.getElementById("inputsearch").style.width = "99vh"), "List" === Ke && (document.getElementsByClassName("ListPlayers")[0].style.left = "49.5%")) : (tt(!1), document.getElementById("admin-container").style.left = "85%", document.getElementById("admin-container").style.width = "40vh", document.getElementById("inputsearch").style.width = "36vh", document.getElementsByClassName("buttons-container")[0].style.left = "4.8%", "Main" === Ke && (document.getElementsByClassName("HeaderActions")[0].style.left = "9%", document.getElementsByClassName("CategoryOptions")[0].style.width = "88%", document.getElementsByClassName("CategoryOptions")[0].style.marginLeft = "4.4vh"), "List" === Ke && (document.getElementsByClassName("ListPlayers")[0].style.left = "53%"))
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.e, null)))))), l.a.createElement("div", {
                        className: "phone-apps"
                    }, l.a.createElement(r.c, null), l.a.createElement(R, null)))))) : "")
                },
                J = a(44),
                U = function(e) {
                    var t = e.overlay,
                        a = t.id,
                        o = t.header,
                        r = t.content,
                        i = t.icon,
                        c = t.iconColor,
                        s = t.bgColor,
                        u = t.perma,
                        d = t.buttons,
                        h = Object(n.useState)("".concat(o)),
                        f = Object(m.a)(h, 2),
                        p = f[0],
                        y = f[1],
                        v = Object(n.useState)("".concat(r)),
                        g = Object(m.a)(v, 2),
                        b = g[0],
                        E = g[1],
                        C = Object(n.useState)(!1),
                        S = Object(m.a)(C, 2),
                        N = S[0],
                        j = S[1],
                        w = Object(n.useState)(!1),
                        T = Object(m.a)(w, 2),
                        P = T[0],
                        k = T[1],
                        I = Object(n.useState)(!1),
                        L = Object(m.a)(I, 2),
                        x = L[0],
                        D = L[1],
                        B = Object(n.useState)(!0),
                        A = Object(m.a)(B, 2),
                        M = A[0],
                        U = A[1],
                        R = Object(n.useState)(!1),
                        z = Object(m.a)(R, 2),
                        G = z[0],
                        V = z[1],
                        H = Object(J.a)(),
                        F = (H.addOverlay, H.deleteOverlay);
                    H.overlays;
                    Object(n.useEffect)(function() {
                        !0 === d && j(!0), "Incoming Call!" === r && D(!0), "Calling..." === r && D(!0), window.addEventListener("message", function(e) {
                            if ("Sheesh" === e.data.type) {
                                if (e.data.id === a)
                                    if (null !== e.data.header && !0 === e.data.header) y(e.data.value);
                                    else {
                                        var t = e.data.value;
                                        if (!0 === e.data.callNotify) {
                                            var n = e.data.value,
                                                l = new Date(null);
                                            l.setSeconds(n);
                                            var o = String(l.getMinutes()),
                                                r = String(l.getSeconds());
                                            o.length < 2 && (o = "0" + l.getMinutes()), r.length < 2 && (r = "0" + l.getSeconds()), t = "".concat(o, ":").concat(r), j(!1), k(!0)
                                        }
                                        E(t)
                                    }
                            } else "closeNotify" === e.data.type && e.data.id === a && !0 !== x && (V(!0), setTimeout(function() {
                                F(e.data.id)
                            }, 500))
                        })
                    }, []), Object(n.useEffect)(function() {
                        var e = setTimeout(function() {
                            return U(!1)
                        }, 2e3);
                        return function() {
                            clearTimeout(e)
                        }
                    }, []), Object(n.useEffect)(function() {
                        M || !0 === u || !0 === x || u && !1 !== u && !1 !== x && x || (V(!0), setTimeout(function() {
                            F(a)
                        }, 1500))
                    }, [M, F, a]);
                    var W = function(e) {
                        !0 === x ? fetch("https://asgard-phone/HangoutCall", {
                            method: "POST",
                            body: JSON.stringify({
                                callid: e
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : fetch("https://asgard-phone/ButtonInteraction", {
                            method: "POST",
                            body: JSON.stringify({
                                ButtonID: e,
                                Action: !1
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                    };
                    return l.a.createElement("div", {
                        id: a,
                        className: G ? "notification-container notification-container-fade-out" : "notification-container ",
                        onClick: function() {
                            return function(e) {
                                !0 === u || (V(!0), setTimeout(function() {
                                    F(e)
                                }, 500))
                            }(a)
                        }
                    }, l.a.createElement("div", {
                        className: "app-bar"
                    }, l.a.createElement("div", {
                        className: "icon",
                        style: {
                            background: s,
                            color: c
                        }
                    }, l.a.createElement("i", {
                        className: "".concat(i),
                        style: {
                            WebkitTextStrokeColor: "black",
                            WebkitTextStrokeWidth: "0.3px",
                            padding: "0.3vh"
                        }
                    })), l.a.createElement("div", {
                        className: "name"
                    }, l.a.createElement(O.a, {
                        style: {
                            color: "white",
                            wordBreak: "break-word"
                        },
                        variant: "body2",
                        gutterBottom: !0
                    }, p)), l.a.createElement(O.a, {
                        style: {
                            color: "white",
                            wordBreak: "break-word"
                        },
                        variant: "body2",
                        gutterBottom: !0
                    }, "just now")), l.a.createElement("div", {
                        className: "content"
                    }, l.a.createElement("div", {
                        className: "text"
                    }, l.a.createElement(O.a, {
                        style: {
                            color: "white",
                            wordBreak: "break-word"
                        },
                        variant: "body2",
                        gutterBottom: !0
                    }, b)), N ? l.a.createElement("div", {
                        className: "actions"
                    }, l.a.createElement("i", {
                        class: "fas fa-check-circle",
                        onClick: function() {
                            ! function(e, t) {
                                !0 === x ? fetch("https://asgard-phone/CallConfirmed", {
                                    method: "POST",
                                    body: JSON.stringify({
                                        callid: e,
                                        callerid: t,
                                        time: "321"
                                    }),
                                    headers: {
                                        "Content-Type": "application/json"
                                    }
                                }) : fetch("https://asgard-phone/ButtonInteraction", {
                                    method: "POST",
                                    body: JSON.stringify({
                                        ButtonID: e,
                                        Action: !0
                                    }),
                                    headers: {
                                        "Content-Type": "application/json"
                                    }
                                })
                            }(a, p)
                        },
                        style: {
                            marginRight: "0.5vh",
                            color: "#bce086"
                        }
                    }), " ", l.a.createElement("i", {
                        style: {
                            color: "#d4983f"
                        },
                        onClick: function() {
                            W(a)
                        },
                        class: "fas fa-times-circle"
                    })) : "", P ? l.a.createElement("div", {
                        className: "actions"
                    }, l.a.createElement("i", {
                        onClick: function() {
                            W(a)
                        },
                        style: {
                            marginRight: "0.5vh",
                            color: "#d4983f"
                        },
                        class: "fas fa-times-circle"
                    })) : ""))
                },
                R = function() {
                    var e = Object(J.a)(),
                        t = (e.addOverlay, e.deleteOverlay),
                        a = e.overlays,
                        o = Object(i.b)().showUI;
                    return Object(n.useEffect)(function() {
                        function e(e) {
                            27 == e.keyCode && (o(!1), fetch("https://asgard-adminmenu/close", {
                                method: "POST"
                            }))
                        }
                        return document.addEventListener("keydown", e),
                            function() {
                                document.removeEventListener("keydown", e)
                            }
                    }, []), l.a.createElement("div", {
                        className: "top-notifications-wrapper"
                    }, a.map(function(e) {
                        return l.a.createElement(U, {
                            deleteOverlay: t,
                            overlay: e,
                            key: e.id
                        })
                    }))
                },
                z = function(e) {
                    return function(t) {
                        return [t.data].flat().map(function(t) {
                            return function(e, t) {
                                switch (t.type) {
                                    case "open":
                                        e.showUI(!0);
                                        break;
                                    case "setBankBalance":
                                        e.setBankBalance(t.balance);
                                        break;
                                    case "addNotify":
                                        e.addShowNotify(t);
                                        break;
                                    case "UpdateSMS":
                                        e.updateMessage(t.messages);
                                        break;
                                    case "getContactsData":
                                        e.setContactsData(t.data);
                                        break;
                                    case "addToHUD":
                                        var a = t.hudType,
                                            n = t.amount,
                                            l = t.message;
                                        e.addToHUD({
                                            type: a,
                                            amount: n,
                                            message: l
                                        })
                                }
                            }(e, t)
                        })
                    }
                };
            var G = a(95),
                V = a(179),
                H = Object(G.a)({
                    overrides: {
                        MuiFilledInput: {
                            root: {
                                backgroundColor: "rgba(255,255,255,0.8)",
                                "&:hover": {
                                    backgroundColor: "rgba(255,255,255,1)"
                                },
                                "&.Mui-focused": {
                                    backgroundColor: "rgba(255,255,255,1)"
                                }
                            }
                        }
                    }
                });
            t.default = function() {
                var e = Object(i.c)().shown;
                return l.a.createElement(V.a, {
                    theme: H
                }, l.a.createElement(F, {
                    shown: e
                }))
            };

            function F(e) {
                e.children, e.shown;
                var t, a, c = Object(i.b)();
                return t = "message", a = z(c), Object(n.useEffect)(function() {
                    return window.addEventListener(t, a),
                        function() {
                            window.removeEventListener(t, a)
                        }
                }), l.a.createElement(l.a.Fragment, null, l.a.createElement(o.a, null, l.a.createElement(r.c, null, l.a.createElement(r.a, {
                    exact: !0,
                    path: "/",
                    render: function() {
                        return l.a.createElement(M, null)
                    }
                }), l.a.createElement(r.a, {
                    component: M
                }))))
            }
        }
    },
    [
        [114, 1, 2]
    ]
]);
(window.webpackJsonp = window.webpackJsonp || []).push([
    [0], {
        114: function(e, t, a) {
            e.exports = a(115)
        },
        115: function(e, t, a) {
            "use strict";
            a.r(t),
                function(e) {
                    var t = a(0),
                        n = a.n(t),
                        l = a(13),
                        o = a.n(l),
                        r = a(70),
                        i = a(37),
                        c = a(16);
                    a(126), a(127);
                    o.a.render(n.a.createElement(c.a, null, n.a.createElement(r.default, null)), document.getElementById("root")), i.a && e.hot && e.hot.accept("./components/App", function() {
                        var e = a(70).default;
                        o.a.render(n.a.createElement(c.a, null, n.a.createElement(e, null)), document.getElementById("root"))
                    })
                }.call(this, a(116)(e))
        },
        126: function(e, t, a) {},
        16: function(e, t, a) {
            "use strict";
            a.d(t, "b", function() {
                return m
            }), a.d(t, "c", function() {
                return u
            }), a.d(t, "a", function() {
                return h
            });
            var n = a(7),
                l = a(85),
                o = a(0),
                r = a.n(o),
                i = a(37),
                c = Object(o.createContext)(),
                s = Object(o.createContext)(),
                m = function() {
                    return Object(o.useContext)(c)
                },
                u = function() {
                    return Object(o.useContext)(s)
                },
                d = function(e, t) {
                    return Object(l.a)(e, function(e) {
                        return t(e)
                    })
                },
                h = function(e) {
                    var t = e.children,
                        a = Object(o.useReducer)(d, i.c),
                        l = Object(n.a)(a, 2),
                        m = l[0],
                        u = l[1],
                        h = Object(o.useMemo)(function() {
                            return function(e, t) {
                                var a = {},
                                    n = function(n) {
                                        a[n] = function() {
                                            for (var a = arguments.length, l = new Array(a), o = 0; o < a; o++) l[o] = arguments[o];
                                            var r = e[n];
                                            t(function(e) {
                                                return r.apply(void 0, [e].concat(l))
                                            })
                                        }
                                    };
                                for (var l in e) n(l);
                                return a
                            }(i.b, u)
                        }, [u]);
                    return r.a.createElement(c.Provider, {
                        value: h
                    }, r.a.createElement(s.Provider, {
                        value: m
                    }, t))
                }
        },
        37: function(e, t, a) {
            "use strict";
            var n = a(20);
            Object(n.b)(), a(0), a(16), a(44);
            a.d(t, "a", function() {
                return l
            }), a.d(t, "c", function() {
                return o
            }), a.d(t, "b", function() {
                return r
            });
            var l = !1,
                o = {
                    shown: l,
                    showUI: !1,
                    NotifySmall: !1,
                    overlays: [],
                    OverlayId: 0,
                    UpdatedMessages: [],
                    Favorites: []
                },
                r = {
                    showUI: function(e, t) {
                        e.showUI = !e.showUI
                    },
                    setContactsData: function(e, t) {
                        e.contactsData = t
                    },
                    setFavorites: function(e, t) {
                        e.Favorites = t
                    },
                    setNotifyShow: function(e, t) {
                        e.NotifySmall = !e.NotifySmall
                    },
                    setOverlays: function(e, t) {
                        for (var a = e.overlays, n = 0; n < a.length; n++)
                            if (a[n].id == t) {
                                a.splice(n, 1);
                                break
                            }
                    },
                    updateMessage: function(e, t) {
                        e.UpdatedMessages = t.messages
                    },
                    addShowNotify: function(e, t) {
                        var a = e.overlays.length + 1;
                        !0 === t.perma && (a = t.id), e.overlays.push({
                            id: a,
                            header: t.title,
                            content: t.description,
                            icon: t.icon,
                            iconColor: "#fff",
                            bgColor: t.background,
                            perma: t.perma,
                            buttons: t.buttons,
                            callnotif: t.callNotify
                        })
                    }
                }
        },
        44: function(e, t, a) {
            "use strict";
            a.d(t, "a", function() {
                return o
            });
            var n = a(34),
                l = (a(0), a(16)),
                o = function() {
                    var e = Object(l.b)().setOverlays,
                        t = (Object(l.b)().setOverlayId, Object(l.c)().overlays);
                    Object(l.c)().OverlayId;
                    return {
                        overlays: t,
                        addOverlay: function(a) {
                            e([].concat(Object(n.a)(t), [a]))
                        },
                        deleteOverlay: function(t) {
                            e(t)
                        }
                    }
                }
        },
        70: function(e, t, a) {
            "use strict";
            a.r(t);
            var n = a(0),
                l = a.n(n),
                o = a(53),
                r = a(15),
                i = a(16),
                c = a(86),
                s = a(34),
                m = a(7),
                u = a(21),
                d = a(181),
                h = a(165),
                f = a(166),
                p = a(168),
                y = a(169),
                v = a(170),
                g = a(171),
                b = a(172),
                E = a(173),
                O = a(128),
                C = a(174),
                S = a(175),
                N = a(187),
                j = a(176),
                w = a(177),
                T = a(178),
                P = a(14),
                k = a(94),
                I = a(17),
                L = a(180);
            var x = a(167),
                D = (a(37), a(159)),
                B = a(182),
                A = Object(D.a)(function(e) {
                    var t;
                    return {
                        card: {
                            marginBottom: "2vh",
                            backgroundColor: "#3c3c3c",
                            height: "5.4vh",
                            borderRadius: "0",
                            color: "white",
                            borderBottom: "0.01vmin solid white",
                            borderTopLeftRadius: "0.2vmin",
                            borderTopRightRadius: "0.2vmin",
                            "&:after": {
                                opacity: "1"
                            },
                            "&:hover:after": {
                                position: "absolute",
                                width: " 100%",
                                height: "100%",
                                top: "0",
                                left: "0",
                                background: "rgba(0, 0, 0, 0.815)",
                                opacity: "0",
                                transition: "all 0.1s"
                            },
                            padding: 0,
                            "&:last-child": {
                                paddingBottom: 0
                            }
                        },
                        CardContent: {
                            padding: 0,
                            "&:last-child": {
                                paddingBottom: 0
                            }
                        },
                        root: (t = {
                            "& .MuiInput-root": {
                                color: "white",
                                fontSize: "1.3vmin"
                            },
                            "& .MuiInput-underline:hover:not(.Mui-disabled):before": {
                                borderColor: "darkgray"
                            },
                            "& .MuiInput-underline:before": {
                                borderColor: "darkgray",
                                color: "blue"
                            },
                            "& .MuiInput-underline:after": {
                                borderColor: "white",
                                color: "blue"
                            }
                        }, Object(u.a)(t, "& .MuiInput-underline:after", {
                            borderColor: "white",
                            color: "blue"
                        }), Object(u.a)(t, "& .MuiInputLabel-animated", {
                            color: "darkgray",
                            fontSize: "1.5vmin"
                        }), Object(u.a)(t, "& .MuiInputAdornment-root", {
                            color: "darkgray"
                        }), Object(u.a)(t, "& .MuiFormHelperText-root", {
                            color: "darkgray"
                        }), Object(u.a)(t, "& .MuiAccordionSummary-content", {
                            margin: "0"
                        }), Object(u.a)(t, "& .MuiAccordionSummary-content.Mui-expanded", {
                            margin: "0"
                        }), Object(u.a)(t, "& .MuiAccordionSummary-root", {
                            padding: "0"
                        }), t)
                    }
                }),
                M = function() {
                    var e, t = A(),
                        a = Object(n.useState)(!0),
                        o = Object(m.a)(a, 2),
                        D = (o[0], o[1], l.a.useRef(null)),
                        M = Object(n.useState)([]),
                        J = Object(m.a)(M, 2),
                        U = J[0],
                        z = J[1],
                        G = Object(n.useState)([]),
                        V = Object(m.a)(G, 2),
                        H = V[0],
                        F = (V[1], l.a.useState("")),
                        W = Object(m.a)(F, 2),
                        K = W[0],
                        X = W[1],
                        Y = l.a.useState([]),
                        Z = Object(m.a)(Y, 2),
                        $ = Z[0],
                        q = Z[1],
                        Q = l.a.useState([{
                            Name: "Extra Sunny",
                            Value: "EXTRASUNNY"
                        }, {
                            Name: "Clear",
                            Value: "CLEAR"
                        }, {
                            Name: "Neutral",
                            Value: "NEUTRAL"
                        }, {
                            Name: "Smog",
                            Value: "SMOG"
                        }, {
                            Name: "Foggy",
                            Value: "FOGGY"
                        }, {
                            Name: "Overcast",
                            Value: "OVERCAST"
                        }, {
                            Name: "Clouds",
                            Value: "CLOUDS"
                        }, {
                            Name: "Clearing",
                            Value: "CLEARING"
                        }, {
                            Name: "Rain",
                            Value: "RAIN"
                        }, {
                            Name: "Thunder",
                            Value: "THUNDER"
                        }, {
                            Name: "Snow",
                            Value: "SNOW"
                        }, {
                            Name: "Blizzard",
                            Value: "BLIZZARD"
                        }, {
                            Name: "Snow Light",
                            Value: "SNOWLIGHT"
                        }, {
                            Name: "XMAS",
                            Value: "XMAS"
                        }, {
                            Name: "Halloween",
                            Value: "HALLOWEEN"
                        }]),
                        _ = Object(m.a)(Q, 2),
                        ee = _[0],
                        te = (_[1], l.a.useState([])),
                        ae = Object(m.a)(te, 2),
                        ne = ae[0],
                        le = ae[1],
                        oe = l.a.useState([]),
                        re = Object(m.a)(oe, 2),
                        ie = re[0],
                        ce = re[1],
                        se = (l.a.useRef(!0), l.a.useState("")),
                        me = Object(m.a)(se, 2),
                        ue = me[0],
                        de = me[1],
                        he = l.a.useState("All"),
                        fe = Object(m.a)(he, 2),
                        pe = fe[0],
                        ye = fe[1],
                        ve = Object(n.useState)(""),
                        ge = Object(m.a)(ve, 2),
                        be = ge[0],
                        Ee = ge[1],
                        Oe = Object(n.useState)([]),
                        Ce = Object(m.a)(Oe, 2),
                        Se = (Ce[0], Ce[1], Object(n.useState)(0)),
                        Ne = Object(m.a)(Se, 2),
                        je = Ne[0],
                        we = Ne[1],
                        Te = Object(n.useState)(""),
                        Pe = Object(m.a)(Te, 2),
                        ke = Pe[0],
                        Ie = Pe[1],
                        Le = Object(n.useState)([]),
                        xe = Object(m.a)(Le, 2),
                        De = xe[0],
                        Be = xe[1],
                        Ae = Object(n.useState)(""),
                        Me = Object(m.a)(Ae, 2),
                        Je = Me[0],
                        Ue = Me[1],
                        Re = Object(n.useState)(""),
                        ze = Object(m.a)(Re, 2),
                        Ge = (ze[0], ze[1], Object(n.useState)([])),
                        Ve = Object(m.a)(Ge, 2),
                        He = (Ve[0], Ve[1]),
                        Fe = Object(n.useState)("Main"),
                        We = Object(m.a)(Fe, 2),
                        Ke = We[0],
                        Xe = We[1],
                        Ye = Object(n.useState)(1),
                        Ze = Object(m.a)(Ye, 2),
                        $e = Ze[0],
                        qe = Ze[1],
                        Qe = Object(n.useState)(!1),
                        _e = Object(m.a)(Qe, 2),
                        et = _e[0],
                        tt = _e[1],
                        at = Object(n.useState)([]),
                        nt = Object(m.a)(at, 2),
                        lt = nt[0],
                        ot = nt[1],
                        rt = Object(n.useState)(!1),
                        it = Object(m.a)(rt, 2),
                        ct = it[0],
                        st = it[1],
                        mt = (Object(i.b)().addShowNotify, Object(n.useState)([])),
                        ut = Object(m.a)(mt, 2),
                        dt = ut[0],
                        ht = ut[1],
                        ft = Object(n.useState)([]),
                        pt = Object(m.a)(ft, 2),
                        yt = pt[0],
                        vt = pt[1],
                        gt = Object(n.useState)([]),
                        bt = Object(m.a)(gt, 2),
                        Et = bt[0],
                        Ot = bt[1],
                        Ct = l.a.useState([]),
                        St = Object(m.a)(Ct, 2),
                        Nt = St[0],
                        jt = St[1],
                        wt = l.a.useState([{
                            DisplayName: "nmig",
                            PlayerID: 1,
                            Steam: "STEAMSAD"
                        }]),
                        Tt = Object(m.a)(wt, 2),
                        Pt = Tt[0],
                        kt = Tt[1],
                        It = l.a.useState(""),
                        Lt = Object(m.a)(It, 2),
                        xt = Lt[0],
                        Dt = Lt[1],
                        Bt = l.a.useState(""),
                        At = Object(m.a)(Bt, 2),
                        Mt = At[0],
                        Jt = At[1],
                        Ut = l.a.useState(""),
                        Rt = Object(m.a)(Ut, 2),
                        zt = Rt[0],
                        Gt = Rt[1],
                        Vt = l.a.useState([]),
                        Ht = Object(m.a)(Vt, 2),
                        Ft = Ht[0],
                        Wt = Ht[1],
                        Kt = Object(n.useState)([{
                            Display: "Bring",
                            value: "bring",
                            Category: "Player"
                        }, {
                            Display: "Ban",
                            value: "ban",
                            Category: "User"
                        }, {
                            Display: "Kick",
                            value: "kick",
                            Category: "User"
                        }, {
                            Display: "Noclip",
                            value: "noclip",
                            Category: "Player"
                        }, {
                            Display: "Player Blips",
                            value: "playerblips",
                            Category: "Utility"
                        }, {
                            Display: "Change Model",
                            value: "changemodel",
                            Category: "Utility"
                        }, {
                            Display: "Spawn Horse",
                            value: "SpawnHorse",
                            Category: "Utility"
                        }, {
                            Display: "God",
                            value: "godmode",
                            Category: "Player"
                        }, {
                            Display: "Super Jump",
                            value: "superjump",
                            Category: "Player"
                        }, {
                            Display: "Teleport Coords",
                            value: "tpcoords",
                            Category: "Player"
                        }, {
                            Display: "Teleport Marker",
                            value: "tpm",
                            Category: "Player"
                        }, {
                            Display: "Attach",
                            value: "attach",
                            Category: "Player"
                        }, {
                            Display: "Spawn Item",
                            value: "spawnitem",
                            Category: "Utility"
                        }, {
                            Display: "Revive",
                            value: "revinradius",
                            Category: "Player"
                        }, {
                            Display: "cSay",
                            value: "csay",
                            Category: "Utility"
                        }, {
                            Display: "tSay",
                            value: "tsay",
                            Category: "Utility"
                        }, {
                            Display: "Give Cash",
                            value: "givecash",
                            Category: "Utility"
                        }, {
                            Display: "Time change",
                            value: "weathertime",
                            Category: "Utility"
                        }, {
                            Display: "View Stable",
                            value: "stable",
                            Category: "Utility"
                        }, {
                            Display: "Open Clothes Menu",
                            value: "clothes",
                            Category: "Utility"
                        }, {
                            Display: "Remove Stress",
                            value: "stress",
                            Category: "Utility"
                        }]),
                        Xt = Object(m.a)(Kt, 2),
                        Yt = Xt[0];
                    Xt[1];

                    function Zt(e) {
                        var t = !1;
                        !1 === qt.filter(function(t) {
                            return t.id === e
                        })[0].html && (t = !0), !0 === t && !1 !== qt.filter(function(t) {
                            return t.id === e
                        })[0].toggle ? function(e) {
                            if (H[e] = !H[e], ("ban" === e || "kick" === e) && null === U) return;
                            $t(e.toLowerCase()), ht(function(e) {
                                return Object(s.a)(e)
                            })
                        }(e) : !0 === t && !1 === qt.filter(function(t) {
                            return t.id === e
                        })[0].toggle ? $t(e) : ea(e)
                    }

                    function $t(e) {
                        "bring" === e ? fetch("https://asgard-adminmenu/bringPlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                PlayerID: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "weathertime" === e ? fetch("https://asgard-adminmenu/setWeather", {
                            method: "POST",
                            body: JSON.stringify({
                                time: je,
                                weather: ie.Value
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "selectEntity" === e ? fetch("https://asgard-adminmenu/selectEntity", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "deleteEntity" === e ? fetch("https://asgard-adminmenu/deleteEntity", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "noclip" === e ? fetch("https://asgard-adminmenu/Noclip", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "givecash" === e ? fetch("https://asgard-adminmenu/GiveCash", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID,
                                amount: Number(ke)
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "godmode" === e ? fetch("https://asgard-adminmenu/GodModeToggle", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "superjump" === e ? fetch("https://asgard-adminmenu/SuperJump", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "ban" === e ? fetch("https://asgard-adminmenu/BanPlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID,
                                reason: ke,
                                length: Date.parse(K) / 1e3
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "kick" === e ? fetch("https://asgard-adminmenu/Kick", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID,
                                reason: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "spawn" === e ? fetch("https://asgard-adminmenu/SpawnItem", {
                            method: "POST",
                            body: JSON.stringify({
                                item: ne.name,
                                amount: $e
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "attachplayer" === e ? fetch("https://asgard-adminmenu/AttachPlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "fixvehicle" === e ? fetch("https://asgard-adminmenu/FixVehicle", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "playerblips" === e ? fetch("https://asgard-adminmenu/playerblips", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "bennys" === e ? fetch("https://asgard-adminmenu/OpenStable", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "clothes" === e ? fetch("https://asgard-adminmenu/OpenClothingMenu", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "stress" === e ? fetch("https://asgard-adminmenu/RemoveStress", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "reviveplayer" === e ? fetch("https://asgard-adminmenu/RevivePlayer", {
                            method: "POST",
                            body: JSON.stringify({
                                Target: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "changemodel" === e ? fetch("https://asgard-adminmenu/ChangeModel", {
                            method: "POST",
                            body: JSON.stringify({
                                model: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "SpawnHorse" === e ? fetch("https://asgard-adminmenu/SpawnHorse", {
                            method: "POST",
                            body: JSON.stringify({
                                horsename: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "tpcoords" === e ? fetch("https://asgard-adminmenu/TeleportToCoords", {
                            method: "POST",
                            body: JSON.stringify({
                                coords: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "tpm" === e ? fetch("https://asgard-adminmenu/TeleportToMarker", {
                            method: "POST",
                            body: JSON.stringify({}),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "attach" === e ? fetch("https://asgard-adminmenu/Spectate", {
                            method: "POST",
                            body: JSON.stringify({
                                target: U.PlayerID
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "csay" === e ? fetch("https://asgard-adminmenu/Csay", {
                            method: "POST",
                            body: JSON.stringify({
                                text: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : "tsay" === e && fetch("https://asgard-adminmenu/tSay", {
                            method: "POST",
                            body: JSON.stringify({
                                text: ke
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }), Ie("")
                    }
                    Object(n.useEffect)(function() {
                        window.addEventListener("message", function(e) {
                            "open" === e.data.type && (console.log("[asgard-admin] all rights reserved to Asgard & Arlen"), ce({
                                Name: "Very Sunny"
                            }), jt(Yt), Yt.map(function(e) {
                                ht(function(t) {
                                    return [].concat(Object(s.a)(t), [{
                                        id: e.value,
                                        open: !1
                                    }])
                                }), Wt(Pt)
                            }), fetch("https://asgard-adminmenu/GetBannedPlayers", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                Be(e)
                            }), fetch("https://asgard-adminmenu/DevmodeStatus", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                Qt = e, document.getElementById("devmode").style.color = !1 === Qt ? "white" : "red"
                            }), fetch("https://asgard-adminmenu/getOnlinePlayers", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                kt(e), Wt(e), z({
                                    PlayerID: e[0].PlayerID,
                                    DisplayName: e[0].DisplayName,
                                    Steam: e[0].Steam
                                })
                            }), fetch("https://asgard-adminmenu/GetItems", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                q(e), le(e[0])
                            }), fetch("https://asgard-adminmenu/GetPlayerData", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                ot(JSON.parse(e[0].favorite))
                            }), console.log("[quotus-admin] Loaded!"), st(!0), Wt(Pt), fetch("https://asgard-adminmenu/GetLogs", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                vt(e), Ot(e)
                            }))
                        })
                    }, []), Object(n.useEffect)(function() {
                        !0 === ct && ("Main" === Ke && !0 === et && (document.getElementsByClassName("HeaderActions")[0].style.left = "4.0%", document.getElementsByClassName("CategoryOptions")[0].style.width = "95%", document.getElementsByClassName("CategoryOptions")[0].style.marginLeft = "4.4vh", document.getElementById("inputsearch").style.width = "99vh"), "List" === Ke && (document.getElementsByClassName("ListPlayers")[0].style.left = !0 === et ? "49.5%" : "52.5%"))
                    }, [Ke]);
                    var qt = [{
                            id: "bring",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("bring")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Bring"))
                        }, {
                            id: "givecash",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                type: "number",
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Amount ($)",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("givecash")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Give Cash"))
                        }, {
                            id: "tpcoords",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Coords (1.1 , 1.1 , 1.1)",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("tpcoords")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Teleport"))
                        }, {
                            id: "changemodel",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Model",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("changemodel")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Change Model"))
                        }, {
                        id: "SpawnHorse",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Horse Model",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("SpawnHorse")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "2vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Spawn Horse"))
                        }, {
                            id: "noclip",
                            html: !1
                        }, {
                            id: "fixvehicle",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "playerblips",
                            html: !1
                        }, {
                        id: "stable",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "clothes",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "stress",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "godmode",
                            html: !1
                        }, {
                            id: "superjump",
                            html: !1
                        }, {
                            id: "tpm",
                            html: !1,
                            toggle: !1
                        }, {
                            id: "revinradius",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("reviveplayer")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Revive"))
                        }, {
                            id: "attach",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("attach")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Spectate"))
                        }, {
                            id: "spawnitem",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: $,
                                onChange: function(e, t) {
                                    return le(t)
                                },
                                getOptionLabel: function(e) {
                                    return "".concat(e.displayname)
                                },
                                value: ne,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Item"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: $e,
                                type: "number",
                                placeholder: "Amount",
                                onChange: function(e) {
                                    qe(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("spawn")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Spawn Item"))
                        }, {
                            id: "weathertime",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: je,
                                type: "number",
                                label: "Time",
                                placeholder: "(only hour)",
                                onChange: function(e) {
                                    we(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%",
                                    marginTop: "1vh"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: ee,
                                onChange: function(e, t) {
                                    return ce(t)
                                },
                                getOptionLabel: function(e) {
                                    return "".concat(e.Name)
                                },
                                value: ie,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Weather"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("weathertime")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Change Weather / Time"))
                        }, {
                            id: "deleteentity",
                            html: l.a.createElement("div", null, l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("selectEntity")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh",
                                    marginRight: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Select Entity"), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("deleteEntity")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "Delete Entity"))
                        }, {
                            id: "csay",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Message",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("csay")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "SUBMIT"))
                        }, {
                            id: "tsay",
                            html: l.a.createElement("div", null, l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Message",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("tsay")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "default",
                                variant: "contained"
                            }, "SUBMIT"))
                        }, {
                            id: "ban",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Reason",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement(I.a, {
                                utils: k.a
                            }, l.a.createElement(L.a, {
                                disablePast: !0,
                                className: t.root,
                                style: {
                                    marginTop: "2vh",
                                    width: "100%"
                                },
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e))
                                },
                                label: "Length",
                                placeholder: "...",
                                value: K,
                                onChange: function(e) {
                                    X(e)
                                }
                            })), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("ban")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Ban"))
                        }, {
                            id: "kick",
                            html: l.a.createElement("div", null, l.a.createElement(B.a, {
                                disablePortal: !0,
                                style: {
                                    overflow: "hidden",
                                    width: "100%"
                                },
                                id: "country-select-demo",
                                sx: {
                                    width: 300
                                },
                                options: Pt,
                                onChange: function(e, t) {
                                    return z(t)
                                },
                                getOptionLabel: function(e) {
                                    return "(".concat(e.PlayerID, ") ").concat(e.DisplayName, " [").concat(e.Steam, "]")
                                },
                                value: U,
                                renderInput: function(e) {
                                    return l.a.createElement(d.a, Object.assign({
                                        className: t.root
                                    }, e, {
                                        label: "Target"
                                    }))
                                }
                            }), l.a.createElement("br", null), l.a.createElement(d.a, {
                                multiline: !0,
                                style: {
                                    marginTop: "1vh",
                                    width: "100%"
                                },
                                autoComplete: "off",
                                className: t.root,
                                value: ke,
                                placeholder: "Reason",
                                onChange: function(e) {
                                    Ie(e.target.value)
                                },
                                InputProps: {
                                    startAdornment: l.a.createElement("div", {
                                        style: {
                                            marginLeft: "0.5vh"
                                        }
                                    })
                                },
                                variant: "standard"
                            }), l.a.createElement("br", null), l.a.createElement("br", null), l.a.createElement(h.a, {
                                onClick: function() {
                                    $t("kick")
                                },
                                className: t.root,
                                size: "small",
                                style: {
                                    float: "center",
                                    marginTop: "1vh"
                                },
                                color: "defau;t",
                                variant: "contained"
                            }, "Kick"))
                        }],
                        Qt = !1;
                    Object(n.useEffect)(function() {}, []), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = Yt.filter(function(e) {
                                return e.Display.toLowerCase().includes(be)
                            });
                            jt(e), 0 === be.length && jt(Yt)
                        }
                    }, [be]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = De.filter(function(e) {
                                return e.Steam.toLowerCase().includes(Je)
                            });
                            jt(e), 0 === Je.length && He(De)
                        }
                    }, [Je]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = Mt.toString().toLowerCase(),
                                t = Pt.filter(function(t) {
                                    return Object.keys(t).some(function(a) {
                                        return -1 !== t[a].toString().toLowerCase().search(e)
                                    })
                                });
                            Wt(t), 0 === Mt.length && Wt(Pt)
                        }
                    }, [Mt]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = xt.toString().toLowerCase(),
                                t = yt.filter(function(t) {
                                    return Object.keys(t).some(function(a) {
                                        return -1 !== t[a].toString().toLowerCase().search(e)
                                    })
                                });
                            Ot(t), 0 === xt.length && Ot(yt)
                        }
                    }, [xt]), Object(n.useEffect)(function() {
                        if (!0 === ct) {
                            var e = Pt.filter(function(e) {
                                return e.Steam.toString().toLowerCase().includes(zt)
                            });
                            Wt(e), 0 === zt.length && Wt(Pt)
                        }
                    }, [zt]);
                    var _t = Object(i.c)().showUI,
                        ea = (Object(i.c)().NotifySmall, Object(i.c)().overlays, function(e) {
                            var t = dt.map(function(t) {
                                return t.id === e ? Object(c.a)({}, t, {
                                    open: !t.open
                                }) : t
                            });
                            ht(t)
                        });

                    function ta(e, t) {
                        return e.filter(function(e) {
                            return e !== t
                        })
                    }
                    var ta = function(e, t) {
                        ot(function(e) {
                            return e.filter(function(e) {
                                return e.name !== t
                            })
                        }), e.stopPropagation()
                    };
                    Object(n.useEffect)(function() {
                        function e(e) {
                            27 == e.keyCode && (lt.length > 0 && fetch("https://asgard-adminmenu/setFav", {
                                method: "POST",
                                body: JSON.stringify({
                                    fav: lt
                                }),
                                headers: {
                                    "Content-Type": "application/json"
                                }
                            }), tt(!1))
                        }
                        return document.addEventListener("keydown", e),
                            function() {
                                document.removeEventListener("keydown", e)
                            }
                    }, [lt]);
                    var aa = "#9faeb3";
                    return l.a.createElement("div", null, ct ? l.a.createElement("div", null, l.a.createElement("div", {
                        ref: D,
                        class: "container disableSelection"
                    }, l.a.createElement(f.a, {
                        easing: {
                            enter: "cubic-bezier(0, 1.5, .8, 1)",
                            exit: "linear"
                        },
                        container: D,
                        in : _t,
                        mountOnEnter: !0,
                        unmountOnExit: !0
                    }, l.a.createElement("div", {
                        id: "admin-container",
                        className: "admin-container"
                    }, "Book" === Ke ? l.a.createElement("div", null, !0 === et ? l.a.createElement("div", null, l.a.createElement("div", {
                        className: "HeaderBanned",
                        style: {
                            left: "46.5%"
                        }
                    }, l.a.createElement(d.a, {
                        style: (e = {
                            top: "0vh",
                            width: "100vh",
                            position: "absolute"
                        }, Object(u.a)(e, "top", "50%"), Object(u.a)(e, "left", "50%"), Object(u.a)(e, "transform", "translate(-50% , -50%)"), e),
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: xt,
                        placeholder: "Search",
                        onChange: function(e) {
                            Dt(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    })), l.a.createElement("div", {
                        className: "LogsList"
                    }, l.a.createElement(p.a, {
                        style: {
                            maxHeight: "73vh"
                        }
                    }, l.a.createElement(y.a, {
                        sx: {
                            minWidth: 650
                        },
                        "aria-label": "simple table"
                    }, l.a.createElement(v.a, null, l.a.createElement(g.a, null, l.a.createElement(b.a, null, "ID"), l.a.createElement(b.a, {
                        align: "left"
                    }, "Name"), l.a.createElement(b.a, {
                        align: "left"
                    }, "Log"), l.a.createElement(b.a, {
                        align: "left"
                    }, "identifier"), l.a.createElement(b.a, {
                        align: "left"
                    }, "Date"))), l.a.createElement(E.a, null, Et.map(function(e) {
                        var t = 1e3 * Number(e.date),
                            a = new Date(t).toLocaleString();
                        return l.a.createElement(g.a, {
                            key: e.id,
                            sx: {
                                "&:last-child td, &:last-child th": {
                                    border: 0
                                }
                            }
                        }, l.a.createElement(b.a, {
                            align: "left"
                        }, e.id), l.a.createElement(b.a, {
                            align: "left"
                        }, e.name), l.a.createElement(b.a, {
                            align: "left"
                        }, e.log), l.a.createElement(b.a, {
                            align: "left"
                        }, e.Identifier), l.a.createElement(b.a, {
                            align: "left"
                        }, a))
                    })))))) : l.a.createElement("div", {
                        style: {
                            width: "80%",
                            fontSize: "2vw"
                        }
                    }, l.a.createElement(O.a, {
                        style: {
                            marginTop: "8vh",
                            width: "50%",
                            marginLeft: "13.5vh",
                            fontSize: "1vw",
                            color: "white"
                        }
                    }, "Sorry, you can't view this page on the small window mode, please expand it."), ",", " ")) : "", "Gavel" === Ke ? l.a.createElement("div", {
                        className: "LastBanned",
                        style: {
                            width: "100%"
                        }
                    }, function() {
                        var e;
                        return !0 === et ? l.a.createElement("div", {
                            className: "HeaderBanned"
                        }, l.a.createElement(d.a, {
                            style: (e = {
                                top: "0vh",
                                width: "100vh",
                                position: "absolute"
                            }, Object(u.a)(e, "top", "50%"), Object(u.a)(e, "left", "50%"), Object(u.a)(e, "transform", "translate(-50% , -50%)"), e),
                            id: "inputsearch",
                            autoComplete: "off",
                            className: t.root,
                            value: Je,
                            placeholder: "Search by steam",
                            onChange: function(e) {
                                Ue(e.target.value)
                            },
                            InputProps: {
                                startAdornment: l.a.createElement("div", {
                                    style: {
                                        marginLeft: "0.5vh"
                                    }
                                })
                            },
                            variant: "standard"
                        }), l.a.createElement("div", {
                            className: "BannedList"
                        }, l.a.createElement(p.a, {
                            style: {
                                maxHeight: "73vh"
                            }
                        }, l.a.createElement(y.a, {
                            sx: {
                                minWidth: 650
                            },
                            "aria-label": "simple table"
                        }, l.a.createElement(v.a, null, l.a.createElement(g.a, null, l.a.createElement(b.a, null, "ID"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Name"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Steam"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Reason"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Length"), l.a.createElement(b.a, {
                            align: "left"
                        }, "Discord"), l.a.createElement(b.a, {
                            align: "left"
                        }, "IP"), l.a.createElement(b.a, {
                            align: "left"
                        }, "License"))), l.a.createElement(E.a, null, De.map(function(e) {
                            return l.a.createElement(g.a, {
                                key: e.name,
                                sx: {
                                    "&:last-child td, &:last-child th": {
                                        border: 0
                                    }
                                }
                            }, l.a.createElement(b.a, {
                                align: "left"
                            }, e.id), l.a.createElement(b.a, {
                                align: "left"
                            }, e.DisplayName), l.a.createElement(b.a, {
                                align: "left"
                            }, e.Steam), l.a.createElement(b.a, {
                                align: "left"
                            }, e.reason), l.a.createElement(b.a, {
                                align: "left"
                            }, e.length), l.a.createElement(b.a, {
                                align: "left"
                            }, e.discord), l.a.createElement(b.a, {
                                align: "left"
                            }, e.ip), l.a.createElement(b.a, {
                                align: "left"
                            }, e.license))
                        })))))) : l.a.createElement("div", {
                            style: {
                                width: "80%",
                                fontSize: "2vw"
                            }
                        }, l.a.createElement(O.a, {
                            style: {
                                marginTop: "8vh",
                                width: "50%",
                                marginLeft: "13.5vh",
                                fontSize: "1vw"
                            }
                        }, "Sorry, you can't view this page on the small window mode, please expand it."))
                    }()) : "", "Settings" === Ke ? l.a.createElement("div", {
                        className: "Settings"
                    }, l.a.createElement(C.a, null, l.a.createElement(S.a, {
                        label: "Label",
                        control: l.a.createElement(N.a, {
                            color: "primary",
                            defaultChecked: !0
                        })
                    }))) : "", "Main" === Ke ? l.a.createElement("div", {
                        className: "HeaderActions"
                    }, l.a.createElement(j.a, {
                        className: t.root,
                        value: pe,
                        style: {
                            position: "absolute !important",
                            top: "0vh"
                        },
                        onChange: function(e, t) {
                            var a;
                            ye(t), jt("All" === (a = t) ? Yt : Yt.filter(function(e) {
                                return e.Category === a
                            }))
                        }
                    }, l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "All",
                        value: "All"
                    }), l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "Player",
                        value: "Player"
                    }), l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "Utility",
                        value: "Utility"
                    }), l.a.createElement(w.a, {
                        showLabel: !0,
                        label: "User",
                        value: "User"
                    })), l.a.createElement("br", null), l.a.createElement(d.a, {
                        style: {
                            marginTop: "1%"
                        },
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: be,
                        placeholder: "Begin typing to filter commands",
                        onChange: function(e) {
                            Ee(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    })) : "", null !== U && 0 !== U.length && "Main" === Ke ? l.a.createElement("div", {
                        className: "Pinned",
                        onClick: function() {
                            z(null)
                        }
                    }, l.a.createElement(O.a, {
                        variant: "body",
                        style: {
                            whiteSpace: "nowrap",
                            fontSize: "0.65vw !important",
                            marginLeft: "3.2vh"
                        }
                    }, "Current Target: (", U.PlayerID, ") ", U.DisplayName, " [", U.Steam, "]")) : "", "Main" === Ke ? l.a.createElement("div", {
                        className: "CategoryOptions",
                        style: {
                            width: "88%",
                            marginLeft: "4.3vh",
                            maxHeight: null === U ? "88%" : "83%"
                        }
                    }, l.a.createElement(x.a, {
                        style: {
                            marginTop: "1vh"
                        },
                        container: !0,
                        spacing: 1
                    }, function() {
                        var e = Nt.sort(function(e, t) {
                            return e.value.toLowerCase().localeCompare(t.value.toLowerCase())
                        }).sort(function(e, t) {
                            return !0 === JSON.stringify(lt).includes(e.value.toLowerCase()) ? -1 : 1
                        });
                        return Nt.length <= 0 ? void 0 : e.map(function(e) {
                            return aa = "#9faeb3" === aa ? "#d8dada" : "#9faeb3", !1 === qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html && !0, l.a.createElement(f.a, { in : !0
                            }, l.a.createElement(x.a, {
                                item: !0,
                                xs: 12
                            }, l.a.createElement("div", {
                                className: "ButtonOption",
                                onClick: function() {
                                    Zt(e.value)
                                },
                                style: {
                                    backgroundColor: !0 === H[e.value] ? "#81b38d" : aa
                                }
                            }, JSON.stringify(lt).includes(e.value.toLowerCase()) ? l.a.createElement(P.j, {
                                onClick: function(t) {
                                    ta(t, e.value)
                                },
                                style: {
                                    float: "left",
                                    marginLeft: "0.7vh",
                                    marginRight: "-1vh",
                                    color: "#eafb39"
                                }
                            }) : l.a.createElement(P.i, {
                                onClick: function(t) {
                                    ! function(e, t) {
                                        ot(function(e) {
                                            return [].concat(Object(s.a)(e), [{
                                                name: t
                                            }])
                                        }), e.stopPropagation()
                                    }(t, e.value)
                                },
                                style: {
                                    float: "left",
                                    marginLeft: "0.7vh",
                                    marginRight: "-1vh",
                                    color: "black"
                                }
                            }), !1 === qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html ? void 0 : dt.filter(function(t) {
                                return t.id === e.value
                            })[0].open ? l.a.createElement(P.b, {
                                style: {
                                    marginRight: "-1.5vh",
                                    position: "relative",
                                    left: !0 === et ? "95%" : "88%"
                                }
                            }) : l.a.createElement(P.a, {
                                style: {
                                    marginRight: "-1.5vh",
                                    position: "relative",
                                    left: !0 === et ? "95%" : "88%"
                                }
                            }), l.a.createElement(O.a, {
                                variant: "body2",
                                style: {
                                    marginLeft: "2vh"
                                }
                            }, e.Display)), !1 === qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html ? void 0 : l.a.createElement(T.a, {
                                transitionDuration: 5,
                                unmountOnExit: !0,
                                in : dt.filter(function(t) {
                                    return t.id === e.value
                                })[0].open,
                                style: {
                                    width: "100%"
                                }
                            }, l.a.createElement("div", {
                                style: {
                                    position: "relative",
                                    backgroundColor: "#6f6f6f",
                                    padding: "2vh",
                                    border: "none"
                                }
                            }, qt.filter(function(t) {
                                return t.id === e.value
                            })[0].html))))
                        })
                    }())) : "", "List" === Ke ? l.a.createElement("div", {
                        className: "PlayersList"
                    }, l.a.createElement("div", {
                        className: "ListSearchHeader",
                        style: {
                            marginLeft: "2vh"
                        }
                    }, l.a.createElement(d.a, {
                        style: {
                            marginTop: "2vh",
                            width: "40%"
                        },
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: Mt,
                        placeholder: "Server ID",
                        onChange: function(e) {
                            Jt(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    }), l.a.createElement(d.a, {
                        style: {
                            marginTop: "2vh",
                            width: "45%"
                        },
                        id: "inputsearch",
                        autoComplete: "off",
                        className: t.root,
                        value: zt,
                        placeholder: "Steam",
                        onChange: function(e) {
                            Gt(e.target.value)
                        },
                        InputProps: {
                            startAdornment: l.a.createElement("div", {
                                style: {
                                    marginLeft: "0.5vh"
                                }
                            })
                        },
                        variant: "standard"
                    })), null !== U && 0 !== U.length ? l.a.createElement("div", {
                        style: {
                            marginTop: "2vh"
                        },
                        className: "Pinned",
                        onClick: function() {
                            z(null)
                        }
                    }, "Current Target: (", U.PlayerID, ") ", U.DisplayName) : "", l.a.createElement("div", {
                        className: "ListPlayers",
                        style: {
                            height: "75vh",
                            maxHeight: "75vh",
                            overflow: "auto"
                        }
                    }, Ft.map(function(e) {
                        return l.a.createElement("div", {
                            className: "PlayerElement",
                            style: {
                                whiteSpace: "nowrap"
                            }
                        }, l.a.createElement(O.a, {
                            style: {
                                position: "absolute",
                                left: "1%"
                            }
                        }, "(", e.PlayerID, ")"), l.a.createElement(O.a, {
                            style: {
                                position: "absolute",
                                left: "10%"
                            }
                        }, e.DisplayName), l.a.createElement(O.a, {
                            style: {
                                position: "absolute",
                                left: "47%"
                            }
                        }, e.Steam))
                    }))) : "", l.a.createElement("div", {
                        className: "buttons-container"
                    }, l.a.createElement("div", {
                        style: {
                            position: "absolute",
                            top: "50%",
                            left: "50%",
                            transform: "translate(-50%,-50%)"
                        }
                    }, l.a.createElement(x.a, {
                        container: !0,
                        spacing: 1
                    }, l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("Main")
                        },
                        style: {
                            backgroundColor: "Main" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.g, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("List")
                        },
                        style: {
                            backgroundColor: "List" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.h, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("Gavel")
                        },
                        style: {
                            backgroundColor: "Gavel" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.f, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            return Xe("Book")
                        },
                        style: {
                            backgroundColor: "Book" === Ke ? "#393939" : ""
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.c, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }))), l.a.createElement("div", {
                        style: {
                            position: "absolute",
                            top: "90%",
                            left: "50%",
                            transform: "translate(-50%,-50%)"
                        }
                    }, l.a.createElement(x.a, {
                        container: !0,
                        spacing: 1
                    }, l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        id: "devmode",
                        className: "sideButton",
                        onClick: function() {
                            fetch("https://asgard-adminmenu/DevmodeToggle", {
                                method: "POST",
                                body: JSON.stringify({}),
                                headers: {
                                    "Content-Type": "application/json"
                                }
                            }), fetch("https://asgard-adminmenu/DevmodeStatus", {
                                method: "GET"
                            }).then(function(e) {
                                return e.json()
                            }).then(function(e) {
                                Qt = e, document.getElementById("devmode").style.color = !1 === Qt ? "white" : "red"
                            })
                        }
                    }, l.a.createElement(P.k, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        className: "sideButton"
                    }, l.a.createElement(P.d, null))), l.a.createElement(x.a, {
                        item: !0,
                        xs: 12
                    }, l.a.createElement("button", {
                        onClick: function() {
                            !1 === et ? (tt(!0), document.getElementById("admin-container").style.left = "50%", document.getElementById("admin-container").style.width = "106vh", document.getElementsByClassName("buttons-container")[0].style.left = "1.8%", "Main" === Ke && (document.getElementsByClassName("HeaderActions")[0].style.left = "4.0%", document.getElementsByClassName("CategoryOptions")[0].style.width = "95%", document.getElementsByClassName("CategoryOptions")[0].style.marginLeft = "4.4vh", document.getElementById("inputsearch").style.width = "99vh"), "List" === Ke && (document.getElementsByClassName("ListPlayers")[0].style.left = "49.5%")) : (tt(!1), document.getElementById("admin-container").style.left = "85%", document.getElementById("admin-container").style.width = "40vh", document.getElementById("inputsearch").style.width = "36vh", document.getElementsByClassName("buttons-container")[0].style.left = "4.8%", "Main" === Ke && (document.getElementsByClassName("HeaderActions")[0].style.left = "9%", document.getElementsByClassName("CategoryOptions")[0].style.width = "88%", document.getElementsByClassName("CategoryOptions")[0].style.marginLeft = "4.4vh"), "List" === Ke && (document.getElementsByClassName("ListPlayers")[0].style.left = "53%"))
                        },
                        className: "sideButton"
                    }, l.a.createElement(P.e, null)))))), l.a.createElement("div", {
                        className: "phone-apps"
                    }, l.a.createElement(r.c, null), l.a.createElement(R, null)))))) : "")
                },
                J = a(44),
                U = function(e) {
                    var t = e.overlay,
                        a = t.id,
                        o = t.header,
                        r = t.content,
                        i = t.icon,
                        c = t.iconColor,
                        s = t.bgColor,
                        u = t.perma,
                        d = t.buttons,
                        h = Object(n.useState)("".concat(o)),
                        f = Object(m.a)(h, 2),
                        p = f[0],
                        y = f[1],
                        v = Object(n.useState)("".concat(r)),
                        g = Object(m.a)(v, 2),
                        b = g[0],
                        E = g[1],
                        C = Object(n.useState)(!1),
                        S = Object(m.a)(C, 2),
                        N = S[0],
                        j = S[1],
                        w = Object(n.useState)(!1),
                        T = Object(m.a)(w, 2),
                        P = T[0],
                        k = T[1],
                        I = Object(n.useState)(!1),
                        L = Object(m.a)(I, 2),
                        x = L[0],
                        D = L[1],
                        B = Object(n.useState)(!0),
                        A = Object(m.a)(B, 2),
                        M = A[0],
                        U = A[1],
                        R = Object(n.useState)(!1),
                        z = Object(m.a)(R, 2),
                        G = z[0],
                        V = z[1],
                        H = Object(J.a)(),
                        F = (H.addOverlay, H.deleteOverlay);
                    H.overlays;
                    Object(n.useEffect)(function() {
                        !0 === d && j(!0), "Incoming Call!" === r && D(!0), "Calling..." === r && D(!0), window.addEventListener("message", function(e) {
                            if ("Sheesh" === e.data.type) {
                                if (e.data.id === a)
                                    if (null !== e.data.header && !0 === e.data.header) y(e.data.value);
                                    else {
                                        var t = e.data.value;
                                        if (!0 === e.data.callNotify) {
                                            var n = e.data.value,
                                                l = new Date(null);
                                            l.setSeconds(n);
                                            var o = String(l.getMinutes()),
                                                r = String(l.getSeconds());
                                            o.length < 2 && (o = "0" + l.getMinutes()), r.length < 2 && (r = "0" + l.getSeconds()), t = "".concat(o, ":").concat(r), j(!1), k(!0)
                                        }
                                        E(t)
                                    }
                            } else "closeNotify" === e.data.type && e.data.id === a && !0 !== x && (V(!0), setTimeout(function() {
                                F(e.data.id)
                            }, 500))
                        })
                    }, []), Object(n.useEffect)(function() {
                        var e = setTimeout(function() {
                            return U(!1)
                        }, 2e3);
                        return function() {
                            clearTimeout(e)
                        }
                    }, []), Object(n.useEffect)(function() {
                        M || !0 === u || !0 === x || u && !1 !== u && !1 !== x && x || (V(!0), setTimeout(function() {
                            F(a)
                        }, 1500))
                    }, [M, F, a]);
                    var W = function(e) {
                        !0 === x ? fetch("https://asgard-phone/HangoutCall", {
                            method: "POST",
                            body: JSON.stringify({
                                callid: e
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        }) : fetch("https://asgard-phone/ButtonInteraction", {
                            method: "POST",
                            body: JSON.stringify({
                                ButtonID: e,
                                Action: !1
                            }),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                    };
                    return l.a.createElement("div", {
                        id: a,
                        className: G ? "notification-container notification-container-fade-out" : "notification-container ",
                        onClick: function() {
                            return function(e) {
                                !0 === u || (V(!0), setTimeout(function() {
                                    F(e)
                                }, 500))
                            }(a)
                        }
                    }, l.a.createElement("div", {
                        className: "app-bar"
                    }, l.a.createElement("div", {
                        className: "icon",
                        style: {
                            background: s,
                            color: c
                        }
                    }, l.a.createElement("i", {
                        className: "".concat(i),
                        style: {
                            WebkitTextStrokeColor: "black",
                            WebkitTextStrokeWidth: "0.3px",
                            padding: "0.3vh"
                        }
                    })), l.a.createElement("div", {
                        className: "name"
                    }, l.a.createElement(O.a, {
                        style: {
                            color: "white",
                            wordBreak: "break-word"
                        },
                        variant: "body2",
                        gutterBottom: !0
                    }, p)), l.a.createElement(O.a, {
                        style: {
                            color: "white",
                            wordBreak: "break-word"
                        },
                        variant: "body2",
                        gutterBottom: !0
                    }, "just now")), l.a.createElement("div", {
                        className: "content"
                    }, l.a.createElement("div", {
                        className: "text"
                    }, l.a.createElement(O.a, {
                        style: {
                            color: "white",
                            wordBreak: "break-word"
                        },
                        variant: "body2",
                        gutterBottom: !0
                    }, b)), N ? l.a.createElement("div", {
                        className: "actions"
                    }, l.a.createElement("i", {
                        class: "fas fa-check-circle",
                        onClick: function() {
                            ! function(e, t) {
                                !0 === x ? fetch("https://asgard-phone/CallConfirmed", {
                                    method: "POST",
                                    body: JSON.stringify({
                                        callid: e,
                                        callerid: t,
                                        time: "321"
                                    }),
                                    headers: {
                                        "Content-Type": "application/json"
                                    }
                                }) : fetch("https://asgard-phone/ButtonInteraction", {
                                    method: "POST",
                                    body: JSON.stringify({
                                        ButtonID: e,
                                        Action: !0
                                    }),
                                    headers: {
                                        "Content-Type": "application/json"
                                    }
                                })
                            }(a, p)
                        },
                        style: {
                            marginRight: "0.5vh",
                            color: "#bce086"
                        }
                    }), " ", l.a.createElement("i", {
                        style: {
                            color: "#d4983f"
                        },
                        onClick: function() {
                            W(a)
                        },
                        class: "fas fa-times-circle"
                    })) : "", P ? l.a.createElement("div", {
                        className: "actions"
                    }, l.a.createElement("i", {
                        onClick: function() {
                            W(a)
                        },
                        style: {
                            marginRight: "0.5vh",
                            color: "#d4983f"
                        },
                        class: "fas fa-times-circle"
                    })) : ""))
                },
                R = function() {
                    var e = Object(J.a)(),
                        t = (e.addOverlay, e.deleteOverlay),
                        a = e.overlays,
                        o = Object(i.b)().showUI;
                    return Object(n.useEffect)(function() {
                        function e(e) {
                            27 == e.keyCode && (o(!1), fetch("https://asgard-adminmenu/close", {
                                method: "POST"
                            }))
                        }
                        return document.addEventListener("keydown", e),
                            function() {
                                document.removeEventListener("keydown", e)
                            }
                    }, []), l.a.createElement("div", {
                        className: "top-notifications-wrapper"
                    }, a.map(function(e) {
                        return l.a.createElement(U, {
                            deleteOverlay: t,
                            overlay: e,
                            key: e.id
                        })
                    }))
                },
                z = function(e) {
                    return function(t) {
                        return [t.data].flat().map(function(t) {
                            return function(e, t) {
                                switch (t.type) {
                                    case "open":
                                        e.showUI(!0);
                                        break;
                                    case "setBankBalance":
                                        e.setBankBalance(t.balance);
                                        break;
                                    case "addNotify":
                                        e.addShowNotify(t);
                                        break;
                                    case "UpdateSMS":
                                        e.updateMessage(t.messages);
                                        break;
                                    case "getContactsData":
                                        e.setContactsData(t.data);
                                        break;
                                    case "addToHUD":
                                        var a = t.hudType,
                                            n = t.amount,
                                            l = t.message;
                                        e.addToHUD({
                                            type: a,
                                            amount: n,
                                            message: l
                                        })
                                }
                            }(e, t)
                        })
                    }
                };
            var G = a(95),
                V = a(179),
                H = Object(G.a)({
                    overrides: {
                        MuiFilledInput: {
                            root: {
                                backgroundColor: "rgba(255,255,255,0.8)",
                                "&:hover": {
                                    backgroundColor: "rgba(255,255,255,1)"
                                },
                                "&.Mui-focused": {
                                    backgroundColor: "rgba(255,255,255,1)"
                                }
                            }
                        }
                    }
                });
            t.default = function() {
                var e = Object(i.c)().shown;
                return l.a.createElement(V.a, {
                    theme: H
                }, l.a.createElement(F, {
                    shown: e
                }))
            };

            function F(e) {
                e.children, e.shown;
                var t, a, c = Object(i.b)();
                return t = "message", a = z(c), Object(n.useEffect)(function() {
                    return window.addEventListener(t, a),
                        function() {
                            window.removeEventListener(t, a)
                        }
                }), l.a.createElement(l.a.Fragment, null, l.a.createElement(o.a, null, l.a.createElement(r.c, null, l.a.createElement(r.a, {
                    exact: !0,
                    path: "/",
                    render: function() {
                        return l.a.createElement(M, null)
                    }
                }), l.a.createElement(r.a, {
                    component: M
                }))))
            }
        }
    },
    [
        [114, 1, 2]
    ]
]);
//# sourceMappingURL=main.chunk.js.map