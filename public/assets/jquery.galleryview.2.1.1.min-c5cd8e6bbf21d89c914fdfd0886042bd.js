var window_loaded = false;
(function($) {
	$.fn.galleryView = function(g) {
		var h = $.extend($.fn.galleryView.defaults, g);
		var j;
		var k = 0;
		var l = 0;
		var m;
		var n;
		var o = false;
		var q;
		var r;
		var t;
		var u;
		var v;
		var w;
		var z;
		var A;
		var B;
		var C = 20;
		var D;
		var E;
		var F;
		var G = {};
		var H = {};
		var I = {};
		var J = {};
		var K = true;
		var L = false;
		var M;
		var N;
		var O;
		var P;
		var Q;
		var R;
		function showItem(i) {
			$('.nav-next-overlay', M).unbind('click');
			$('.nav-prev-overlay', M).unbind('click');
			$('.nav-next', M).unbind('click');
			$('.nav-prev', M).unbind('click');
			O.unbind('click');
			if (h.show_filmstrip) {
				O.removeClass('current').find('img').stop().animate({
					'opacity' : h.frame_opacity
				}, h.transition_speed);
				O.eq(i).addClass('current').find('img').stop().animate({
					'opacity' : 1.0
				}, h.transition_speed)
			}
			if (h.show_panels && h.fade_panels) {
				Q.fadeOut(h.transition_speed).eq(i % l).fadeIn(h.transition_speed, function() {
					if (!h.show_filmstrip) {
						$('.nav-prev-overlay', M).click(showPrevItem);
						$('.nav-next-overlay', M).click(showNextItem);
						$('.nav-prev', M).click(showPrevItem);
						$('.nav-next', M).click(showNextItem)
					}
				})
			}
			if (h.show_filmstrip) {
				if (m == 'strip') {
					N.stop();
					var b;
					var c;
					if (F == 'horizontal') {
						b = getPos(O[i]).left - (getPos(R[0]).left + (u / 2) - (A / 2));
						c = (b >= 0 ? '-=' : '+=') + Math.abs(b) + 'px';
						N.animate({
							'left' : c
						}, h.transition_speed, h.easing, function() {
							var a = i;
							if (i > l) {
								i = i % l;
								k = i;
								N.css('left', '-' + ((A + h.frame_gap) * i) + 'px')
							} else if (i <= (l - strip_size)) {
								i = (i % l) + l;
								k = i;
								N.css('left', '-' + ((A + h.frame_gap) * i) + 'px')
							}
							if (a != i) {
								O.eq(a).removeClass('current').find('img').css({
									'opacity' : h.frame_opacity
								});
								O.eq(i).addClass('current').find('img').css({
									'opacity' : 1.0
								})
							}
							if (!h.fade_panels) {
								Q.hide().eq(i % l).show()
							}
							$('.nav-prev-overlay', M).click(showPrevItem);
							$('.nav-next-overlay', M).click(showNextItem);
							$('.nav-prev', M).click(showPrevItem);
							$('.nav-next', M).click(showNextItem);
							enableFrameClicking()
						})
					} else {
						b = getPos(O[i]).top - (getPos(R[0]).top + (t) - (B / 2));
						c = (b >= 0 ? '-=' : '+=') + Math.abs(b) + 'px';
						N.animate({
							'top' : c
						}, h.transition_speed, h.easing, function() {
							var a = i;
							if (i > l) {
								i = i % l;
								k = i;
								N.css('top', '-' + ((B + h.frame_gap) * i) + 'px')
							} else if (i <= (l - strip_size)) {
								i = (i % l) + l;
								k = i;
								N.css('top', '-' + ((B + h.frame_gap) * i) + 'px')
							}
							if (a != i) {
								O.eq(a).removeClass('current').find('img').css({
									'opacity' : h.frame_opacity
								});
								O.eq(i).addClass('current').find('img').css({
									'opacity' : 1.0
								})
							}
							if (!h.fade_panels) {
								Q.hide().eq(i % l).show()
							}
							$('.nav-prev-overlay', M).click(showPrevItem);
							$('.nav-next-overlay', M).click(showNextItem);
							$('.nav-prev', M).click(showPrevItem);
							$('.nav-next', M).click(showNextItem);
							enableFrameClicking()
						})
					}
				} else if (m == 'pointer') {
					R.stop();
					var d = getPos(O[i]);
					if (F == 'horizontal') {
						R.animate({
							'left' : (d.left + (A / 2) - (u / 2) + 'px')
						}, h.transition_speed, h.easing, function() {
							if (!h.fade_panels) {
								Q.hide().eq(i % l).show()
							}
							$('.nav-prev-overlay', M).click(showPrevItem);
							$('.nav-next-overlay', M).click(showNextItem);
							$('.nav-prev', M).click(showPrevItem);
							$('.nav-next', M).click(showNextItem);
							enableFrameClicking()
						})
					} else {
						R.animate({
							'top' : (d.top + (B / 2) - (t) + 'px')
						}, h.transition_speed, h.easing, function() {
							if (!h.fade_panels) {
								Q.hide().eq(i % l).show()
							}
							$('.nav-prev-overlay', M).click(showPrevItem);
							$('.nav-next-overlay', M).click(showNextItem);
							$('.nav-prev', M).click(showPrevItem);
							$('.nav-next', M).click(showNextItem);
							enableFrameClicking()
						})
					}
				}
			}
		};
		function extraWidth(a) {
			if (!a) {
				return 0
			}
			if (a.length == 0) {
				return 0
			}
			a = a.eq(0);
			var b = 0;
			b += getInt(a.css('paddingLeft'));
			b += getInt(a.css('paddingRight'));
			b += getInt(a.css('borderLeftWidth'));
			b += getInt(a.css('borderRightWidth'));
			return b
		};
		function extraHeight(a) {
			if (!a) {
				return 0
			}
			if (a.length == 0) {
				return 0
			}
			a = a.eq(0);
			var b = 0;
			b += getInt(a.css('paddingTop'));
			b += getInt(a.css('paddingBottom'));
			b += getInt(a.css('borderTopWidth'));
			b += getInt(a.css('borderBottomWidth'));
			return b
		};
		function showNextItem() {
			$(document).stopTime("transition");
			if (++k == O.length) {
				k = 0
			}
			showItem(k);
			if (!o) {
				$(document).everyTime(h.transition_interval, "transition", function() {
					showNextItem()
				})
			}
		};
		function showPrevItem() {
			$(document).stopTime("transition");
			if (--k < 0) {
				k = l - 1
			}
			showItem(k);
			if (!o) {
				$(document).everyTime(h.transition_interval, "transition", function() {
					showNextItem()
				})
			}
		};
		function getPos(a) {
			var b = 0, top = 0;
			var c = a.id;
			if (a.offsetParent) {
				do {
					b += a.offsetLeft;
					top += a.offsetTop
				} while(a=a.offsetParent)
			}
			if (c == j) {
				return {
					'left' : b,
					'top' : top
				}
			} else {
				var d = getPos(M[0]);
				var e = d.left;
				var f = d.top;
				return {
					'left' : b - e,
					'top' : top - f
				}
			}
		};
		function enableFrameClicking() {
			O.each(function(i) {
				if ($('a', this).length == 0) {
					$(this).click(function() {
						if (k != i) {
							$(document).stopTime("transition");
							showItem(i);
							k = i;
							if (!o) {
								$(document).everyTime(h.transition_interval, "transition", function() {
									showNextItem()
								})
							}
						}
					})
				}
			})
		};
		function buildPanels() {
			Q.each(function(i) {
				if ($('.panel-overlay', this).length > 0) {
					$(this).append('<div class="overlay-background"></div>')
				}
			});
			if (!h.show_filmstrip) {
				$('<img />').addClass('nav-next').attr('src', n + h.nav_theme + '/next.gif').appendTo(M).css({
					'position' : 'absolute',
					'zIndex' : '1100',
					'cursor' : 'pointer',
					'top' : ((h.panel_height - 22) / 2) + D + 'px',
					'right' : '0px',
					'display' : 'none'
				}).click(showNextItem);
				$('<img />').addClass('nav-prev').attr('src', n + h.nav_theme + '/prev.gif').appendTo(M).css({
					'position' : 'absolute',
					'zIndex' : '1100',
					'cursor' : 'pointer',
					'top' : ((h.panel_height - 22) / 2) + D + 'px',
					'left' : '0px',
					'display' : 'none'
				}).click(showPrevItem);
				$('<img />').addClass('nav-next-overlay').attr('src', n + h.nav_theme + '/panel-nav-next.gif').appendTo(M).css({
					'position' : 'absolute',
					'zIndex' : '1099',
					'top' : ((h.panel_height - 22) / 2) + D - 10 + 'px',
					'right' : '0',
					'display' : 'none',
					'cursor' : 'pointer',
					'opacity' : 0.75
				}).click(showNextItem);
				$('<img />').addClass('nav-prev-overlay').attr('src', n + h.nav_theme + '/panel-nav-prev.gif').appendTo(M).css({
					'position' : 'absolute',
					'zIndex' : '1099',
					'top' : ((h.panel_height - 22) / 2) + D - 10 + 'px',
					'left' : '0',
					'display' : 'none',
					'cursor' : 'pointer',
					'opacity' : 0.75
				}).click(showPrevItem)
			}
			Q.each(function(i) {
				$(this).css({
					'width' : (h.panel_width - extraWidth(Q)) + 'px',
					'height' : (h.panel_height - extraHeight(Q)) + 'px',
					'position' : 'absolute',
					'overflow' : 'hidden',
					'display' : 'none'
				});
				switch(h.filmstrip_position) {
					case'top':
						$(this).css({
							'top' : w + Math.max(D, E) + 'px',
							'left' : D + 'px'
						});
						break;
					case'left':
						$(this).css({
							'top' : D + 'px',
							'left' : v + Math.max(D, E) + 'px'
						});
						break;
					default:
						$(this).css({
							'top' : D + 'px',
							'left' : D + 'px'
						});
						break
				}
			});
			$('.panel-overlay', Q).css({
				'position' : 'absolute',
				'zIndex' : '999',
				'width' : (h.panel_width - extraWidth($('.panel-overlay', Q))) + 'px',
				'left' : '0'
			});
			$('.overlay-background', Q).css({
				'position' : 'absolute',
				'zIndex' : '998',
				'width' : h.panel_width + 'px',
				'left' : '0',
				'opacity' : h.overlay_opacity
			});
			if (h.overlay_position == 'top') {
				$('.panel-overlay', Q).css('top', 0);
				$('.overlay-background', Q).css('top', 0)
			} else {
				$('.panel-overlay', Q).css('bottom', 0);
				$('.overlay-background', Q).css('bottom', 0)
			}
			$('.panel iframe', Q).css({
				'width' : h.panel_width + 'px',
				'height' : h.panel_height + 'px',
				'border' : '0'
			});
			if (K) {
				$('img', Q).each(function(i) {
					$(this).css({
						'height' : H[i % l] * I[i % l],
						'width' : H[i % l] * J[i % l],
						'position' : 'relative',
						'top' : (h.panel_height - (H[i % l] * I[i % l])) / 2 + 'px',
						'left' : (h.panel_width - (H[i % l] * J[i % l])) / 2 + 'px'
					})
				})
			}
		};
		function buildFilmstrip() {
			N.wrap('<div class="strip_wrapper"></div>');
			if (m == 'strip') {
				O.clone().appendTo(N);
				O.clone().appendTo(N);
				O = $('li', N)
			}
			if (h.show_captions) {
				O.append('<div class="caption"></div>').each(function(i) {
					$(this).find('.caption').html($(this).find('img').attr('title'))
				})
			}
			N.css({
				'listStyle' : 'none',
				'margin' : '0',
				'padding' : '0',
				'width' : v + 'px',
				'position' : 'absolute',
				'zIndex' : '900',
				'top' : (F == 'vertical' && m == 'strip' ? -((B + h.frame_gap) * k) : 0) + 'px',
				'left' : (F == 'horizontal' && m == 'strip' ? -((A + h.frame_gap) * k) : 0) + 'px',
				'height' : w + 'px'
			});
			O.css({
				'float' : 'left',
				'position' : 'relative',
				'height' : B + (h.show_captions ? C : 0) + 'px',
				'width' : A + 'px',
				'zIndex' : '901',
				'padding' : '0',
				'cursor' : 'pointer'
			});
			switch(h.filmstrip_position) {
				case'top':
					O.css({
						'marginBottom' : E + 'px',
						'marginRight' : h.frame_gap + 'px'
					});
					break;
				case'bottom':
					O.css({
						'marginTop' : E + 'px',
						'marginRight' : h.frame_gap + 'px'
					});
					break;
				case'left':
					O.css({
						'marginRight' : E + 'px',
						'marginBottom' : h.frame_gap + 'px'
					});
					break;
				case'right':
					O.css({
						'marginLeft' : E + 'px',
						'marginBottom' : h.frame_gap + 'px'
					});
					break
			}
			$('.img_wrap', O).each(function(i) {
				$(this).css({
					'height' : Math.min(h.frame_height, I[i % l] * G[i % l]) + 'px',
					'width' : Math.min(h.frame_width, J[i % l] * G[i % l]) + 'px',
					'position' : 'relative',
					'top' : (h.show_captions && h.filmstrip_position == 'top' ? C : 0) + Math.max(0, (h.frame_height - (G[i % l] * I[i % l])) / 2) + 'px',
					'left' : Math.max(0, (h.frame_width - (G[i % l] * J[i % l])) / 2) + 'px',
					'overflow' : 'hidden'
				})
			});
			$('img', O).each(function(i) {
				$(this).css({
					'opacity' : h.frame_opacity,
					'height' : I[i % l] * G[i % l] + 'px',
					'width' : J[i % l] * G[i % l] + 'px',
					'position' : 'relative',
					'top' : Math.min(0, (h.frame_height - (G[i % l] * I[i % l])) / 2) + 'px',
					'left' : Math.min(0, (h.frame_width - (G[i % l] * J[i % l])) / 2) + 'px'
				}).mouseover(function() {
					$(this).stop().animate({
						'opacity' : 1.0
					}, 300)
				}).mouseout(function() {
					if (!$(this).parent().parent().hasClass('current')) {
						$(this).stop().animate({
							'opacity' : h.frame_opacity
						}, 300)
					}
				})
			});
			$('.strip_wrapper', M).css({
				'position' : 'absolute',
				'overflow' : 'hidden'
			});
			if (F == 'horizontal') {
				$('.strip_wrapper', M).css({
					'top' : (h.filmstrip_position == 'top' ? Math.max(D, E) + 'px' : h.panel_height + D + 'px'),
					'left' : ((q - z) / 2) + D + 'px',
					'width' : z + 'px',
					'height' : w + 'px'
				})
			} else {
				$('.strip_wrapper', M).css({
					'left' : (h.filmstrip_position == 'left' ? Math.max(D, E) + 'px' : h.panel_width + D + 'px'),
					'top' : Math.max(D, h.frame_gap) + 'px',
					'width' : v + 'px',
					'height' : wrapper_height + 'px'
				})
			}
			$('.caption', M).css({
				'position' : 'absolute',
				'top' : (h.filmstrip_position == 'bottom' ? B : 0) + 'px',
				'left' : '0',
				'margin' : '0',
				'width' : A + 'px',
				'padding' : '0',
				'height' : C + 'px',
				'overflow' : 'hidden',
				'lineHeight' : C + 'px'
			});
			var a = $('<div></div>');
			a.addClass('pointer').appendTo(M).css({
				'position' : 'absolute',
				'zIndex' : '1000',
				'width' : '0px',
				'fontSize' : '0px',
				'lineHeight' : '0%',
				'borderTopWidth' : t + 'px',
				'borderRightWidth' : (u / 2) + 'px',
				'borderBottomWidth' : t + 'px',
				'borderLeftWidth' : (u / 2) + 'px',
				'borderStyle' : 'solid'
			});
			var b = $.browser.msie && $.browser.version.substr(0, 1) == '6' ? 'pink' : 'transparent';
			if (!h.show_panels) {
				a.css('borderColor', b)
			}
			switch(h.filmstrip_position) {
				case'top':
					a.css({
						'bottom' : (h.panel_height - (t * 2) + D + E) + 'px',
						'left' : ((q - z) / 2) + (m == 'strip' ? 0 : ((A + h.frame_gap) * k)) + ((A / 2) - (u / 2)) + D + 'px',
						'borderBottomColor' : b,
						'borderRightColor' : b,
						'borderLeftColor' : b
					});
					break;
				case'bottom':
					a.css({
						'top' : (h.panel_height - (t * 2) + D + E) + 'px',
						'left' : ((q - z) / 2) + (m == 'strip' ? 0 : ((A + h.frame_gap) * k)) + ((A / 2) - (u / 2)) + D + 'px',
						'borderTopColor' : b,
						'borderRightColor' : b,
						'borderLeftColor' : b
					});
					break;
				case'left':
					a.css({
						'right' : (h.panel_width - u + D + E) + 'px',
						'top' : (B / 2) - (t) + (m == 'strip' ? 0 : ((B + h.frame_gap) * k)) + D + 'px',
						'borderBottomColor' : b,
						'borderRightColor' : b,
						'borderTopColor' : b
					});
					break;
				case'right':
					a.css({
						'left' : (h.panel_width - u + D + E) + 'px',
						'top' : (B / 2) - (t) + (m == 'strip' ? 0 : ((B + h.frame_gap) * k)) + D + 'px',
						'borderBottomColor' : b,
						'borderLeftColor' : b,
						'borderTopColor' : b
					});
					break
			}
			R = $('.pointer', M);
			var c = $('<img />');
			c.addClass('nav-next').attr('src', n + h.nav_theme + '/next.gif').appendTo(M).css({
				'position' : 'absolute',
				'cursor' : 'pointer'
			}).click(showNextItem);
			var d = $('<img />');
			d.addClass('nav-prev').attr('src', n + h.nav_theme + '/prev.gif').appendTo(M).css({
				'position' : 'absolute',
				'cursor' : 'pointer'
			}).click(showPrevItem);
			if (F == 'horizontal') {
				c.css({
					'top' : (h.filmstrip_position == 'top' ? Math.max(D, E) : h.panel_height + E + D) + ((B - 22) / 2) + 'px',
					'right' : ((q + (D * 2)) / 2) - (z / 2) - h.frame_gap - 22 + 'px'
				});
				d.css({
					'top' : (h.filmstrip_position == 'top' ? Math.max(D, E) : h.panel_height + E + D) + ((B - 22) / 2) + 'px',
					'left' : ((q + (D * 2)) / 2) - (z / 2) - h.frame_gap - 22 + 'px'
				})
			} else {
				c.css({
					'left' : (h.filmstrip_position == 'left' ? Math.max(D, E) : h.panel_width + E + D) + ((A - 22) / 2) + 13 + 'px',
					'top' : wrapper_height + (Math.max(D, h.frame_gap) * 2) + 'px'
				});
				d.css({
					'left' : (h.filmstrip_position == 'left' ? Math.max(D, E) : h.panel_width + E + D) + ((A - 22) / 2) - 13 + 'px',
					'top' : wrapper_height + (Math.max(D, h.frame_gap) * 2) + 'px'
				})
			}
		};
		function mouseIsOverGallery(x, y) {
			var a = getPos(M[0]);
			var b = a.top;
			var c = a.left;
			return x > c && x < c + q + (F == 'horizontal' ? (D * 2) : D + Math.max(D, E)) && y > b && y < b + r + (F == 'vertical' ? (D * 2) : D + Math.max(D, E))
		};
		function getInt(i) {
			i = parseInt(i, 10);
			if (isNaN(i)) {
				i = 0
			}
			return i
		};
		function buildGallery() {
			var a = h.show_filmstrip ? $('img', O) : $('img', Q);
			a.each(function(i) {
				I[i] = this.height;
				J[i] = this.width;
				if (h.frame_scale == 'nocrop') {
					G[i] = Math.min(h.frame_height / I[i], h.frame_width / J[i])
				} else {
					G[i] = Math.max(h.frame_height / I[i], h.frame_width / J[i])
				}
				if (h.panel_scale == 'nocrop') {
					H[i] = Math.min(h.panel_height / I[i], h.panel_width / J[i])
				} else {
					H[i] = Math.max(h.panel_height / I[i], h.panel_width / J[i])
				}
			});
			M.css({
				'position' : 'relative',
				'width' : q + (F == 'horizontal' ? (D * 2) : D + Math.max(D, E)) + 'px',
				'height' : r + (F == 'vertical' ? (D * 2) : D + Math.max(D, E)) + 'px'
			});
			if (h.show_filmstrip) {
				buildFilmstrip();
				enableFrameClicking()
			}
			if (h.show_panels) {
				buildPanels()
			}
			if (h.pause_on_hover || (h.show_panels && !h.show_filmstrip)) {
				$(document).mousemove(function(e) {
					if (mouseIsOverGallery(e.pageX, e.pageY)) {
						if (h.pause_on_hover) {
							if (!o) {
								$(document).oneTime(500, "animation_pause", function() {
									$(document).stopTime("transition");
									o = true
								})
							}
						}
						if (h.show_panels && !h.show_filmstrip && !L) {
							$('.nav-next-overlay').fadeIn('fast');
							$('.nav-prev-overlay').fadeIn('fast');
							$('.nav-next', M).fadeIn('fast');
							$('.nav-prev', M).fadeIn('fast');
							L = true
						}
					} else {
						if (h.pause_on_hover) {
							$(document).stopTime("animation_pause");
							if (o) {
								$(document).everyTime(h.transition_interval, "transition", function() {
									showNextItem()
								});
								o = false
							}
						}
						if (h.show_panels && !h.show_filmstrip && L) {
							$('.nav-next-overlay').fadeOut('fast');
							$('.nav-prev-overlay').fadeOut('fast');
							$('.nav-next', M).fadeOut('fast');
							$('.nav-prev', M).fadeOut('fast');
							L = false
						}
					}
				})
			}
			N.css('visibility', 'visible');
			M.css('visibility', 'visible');
			$('.loader', M).fadeOut('1000', function() {
				showItem(k);
				if (l > 1) {
					$(document).everyTime(h.transition_interval, "transition", function() {
						showNextItem()
					})
				}
			})
		};
		return this.each(function() {
			$(this).css('visibility', 'hidden');
			$(this).wrap("<div></div>");
			M = $(this).parent();
			M.css('visibility', 'hidden').attr('id', $(this).attr('id')).addClass('gallery');
			$(this).removeAttr('id').addClass('filmstrip');
			$(document).stopTime("transition");
			$(document).stopTime("animation_pause");
			j = M.attr('id');
			K = $('.panel-content', M).length == 0;
			t = h.pointer_size;
			u = h.pointer_size * 2;
			F = (h.filmstrip_position == 'top' || h.filmstrip_position == 'bottom' ? 'horizontal' : 'vertical');
			if (F == 'vertical') {
				h.show_captions = false
			}
			$('script').each(function(i) {
				var s = $(this);
				if (s.attr('src') && s.attr('src').match(/jquery\.galleryview/)) {
					loader_path = s.attr('src').split('jquery.galleryview')[0];
					n = s.attr('src').split('jquery.galleryview')[0] + 'images/galleryviewthemes/'
					//n = s.attr('src').split('jquery.galleryview')[0] + '/public/assets/images/galleryviewthemes/'					
				}
			});
			N = $('.filmstrip', M);
			O = $('li', N);
			O.addClass('frame');
			if (h.show_panels) {
				for ( i = O.length - 1; i >= 0; i--) {
					if (O.eq(i).find('.panel-content').length > 0) {
						O.eq(i).find('.panel-content').remove().prependTo(M).addClass('panel')
					} else {
						p = $('<div>');
						p.addClass('panel');
						im = $('<img />');
						im.attr('src', O.eq(i).find('img').eq(0).attr('src')).appendTo(p);
						p.prependTo(M);
						O.eq(i).find('.panel-overlay').remove().appendTo(p)
					}
				}
			} else {
				$('.panel-overlay', O).remove();
				$('.panel-content', O).remove()
			}
			if (!h.show_filmstrip) {
				N.remove()
			} else {
				O.each(function(i) {
					if ($(this).find('a').length > 0) {
						$(this).find('a').wrap('<div class="img_wrap"></div>')
					} else {
						$(this).find('img').wrap('<div class="img_wrap"></div>')
					}
				});
				P = $('.img_wrap', O)
			}
			Q = $('.panel', M);
			if (!h.show_panels) {
				h.panel_height = 0;
				h.panel_width = 0
			}
			A = h.frame_width + extraWidth(P);
			B = h.frame_height + extraHeight(P);
			l = h.show_panels ? Q.length : O.length;
			if (F == 'horizontal') {
				strip_size = h.show_panels ? Math.floor((h.panel_width - ((h.frame_gap + 22) * 2)) / (A + h.frame_gap)) : Math.min(l, h.filmstrip_size)
			} else {
				strip_size = h.show_panels ? Math.floor((h.panel_height - (h.frame_gap + 22)) / (B + h.frame_gap)) : Math.min(l, h.filmstrip_size)
			}
			if (strip_size >= l) {
				m = 'pointer';
				strip_size = l
			} else {
				m = 'strip'
			}
			k = (strip_size < l ? l : 0) + h.start_frame - 1;
			E = (h.show_panels ? getInt(N.css('marginTop')) : 0);
			N.css('margin', '0px');
			if (F == 'horizontal') {
				q = h.show_panels ? h.panel_width : (strip_size * (A + h.frame_gap)) + 44 + h.frame_gap;
				r = (h.show_panels ? h.panel_height : 0) + (h.show_filmstrip ? B + E + (h.show_captions ? C : 0) : 0)
			} else {
				r = h.show_panels ? h.panel_height : (strip_size * (B + h.frame_gap)) + 22;
				q = (h.show_panels ? h.panel_width : 0) + (h.show_filmstrip ? A + E : 0)
			}
			if (F == 'horizontal') {
				if (m == 'pointer') {
					v = (A * l) + (h.frame_gap * (l))
				} else {
					v = (A * l * 3) + (h.frame_gap * (l * 3))
				}
			} else {
				v = (A + E)
			}
			if (F == 'horizontal') {
				w = (B + E + (h.show_captions ? C : 0))
			} else {
				if (m == 'pointer') {
					w = (B * l + h.frame_gap * (l))
				} else {
					w = (B * l * 3) + (h.frame_gap * (l * 3))
				}
			}
			z = ((strip_size * A) + ((strip_size - 1) * h.frame_gap));
			wrapper_height = ((strip_size * B) + ((strip_size - 1) * h.frame_gap));
			D = getInt(M.css('paddingTop'));
			M.css('padding', '0px');
			galleryPos = getPos(M[0]);
			$('<div>').addClass('loader').css({
				'position' : 'absolute',
				'zIndex' : '32666',
				'opacity' : 1,
				'top' : '0px',
				'left' : '0px',
				'width' : q + (F == 'horizontal' ? (D * 2) : D + Math.max(D, E)) + 'px',
				'height' : r + (F == 'vertical' ? (D * 2) : D + Math.max(D, E)) + 'px'
			}).appendTo(M);
			if (!window_loaded) {
				$(window).load(function() {
					window_loaded = true;
					buildGallery()
				})
			} else {
				buildGallery()
			}
		})
	};
	$.fn.galleryView.defaults = {
		show_panels : true,
		show_filmstrip : true,
		panel_width : 450,
		panel_height : 320,
		frame_width : 100,
		frame_height : 70,
		start_frame : 1,
		filmstrip_size : 4,
		transition_speed : 800,
		transition_interval : 4000,
		overlay_opacity : 0.7,
		frame_opacity : 0.3,
		pointer_size : 0,
		nav_theme : 'dark',
		easing : 'swing',
		filmstrip_position : 'bottom',
		overlay_position : 'bottom',
		panel_scale : 'nocrop',
		frame_scale : 'crop',
		frame_gap : 10,
		show_captions : false,
		fade_panels : true,
		pause_on_hover : true
	}
})(jQuery); 
