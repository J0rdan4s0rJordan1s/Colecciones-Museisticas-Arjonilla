'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "1a2770eaa398792cad8094dc349425d5",
"version.json": "55067a20a55fb044c02a90028a674666",
"index.html": "3b72291f960840be806820b79cba23b8",
"/": "3b72291f960840be806820b79cba23b8",
"main.dart.js": "9d08be9092f88ff50a5d45824ad04461",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "c088225726a893ae3be696bca8c6092e",
"assets/AssetManifest.json": "1cf51b89bb35d376de91da76584512d6",
"assets/NOTICES": "c521971bdcc44ecf458732da97a9ab19",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "198b9a0261d306d7ea4d69361995f4d6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "fd2cddea164ccb2400f3535f8d06d11b",
"assets/fonts/MaterialIcons-Regular.otf": "a38bf6c252cbba75ddb809c27311575e",
"assets/assets/audios/colecciones/colecciones-8.mp3": "a54534347999d74a953044fa558fa4cf",
"assets/assets/audios/colecciones/colecciones-4.mp3": "e707012d6477075e54b07c9eb4743981",
"assets/assets/audios/colecciones/colecciones-5.mp3": "784b4cf0c1f2b55e80713da0321a5af6",
"assets/assets/audios/colecciones/colecciones-7.mp3": "a54534347999d74a953044fa558fa4cf",
"assets/assets/audios/colecciones/colecciones-6.mp3": "e093c979a2d02dfaaca416337611dc0e",
"assets/assets/audios/colecciones/colecciones-2.mp3": "371009506703a1f4e20807b2a00c2e5a",
"assets/assets/audios/colecciones/colecciones-3.mp3": "9599cfc0f3ac7f2c03d9793ff388bcd0",
"assets/assets/audios/colecciones/colecciones-1.mp3": "b30bdffa34bf776c0836e159c8af2e1f",
"assets/assets/audios/colecciones/colecciones-14.mp3": "540c66c46b6638bf0e4cc79fcf40c5a9",
"assets/assets/audios/colecciones/colecciones-15.mp3": "defa2123adc30e339716c2c72642d830",
"assets/assets/audios/colecciones/colecciones-16.mp3": "a3ebb038a0e31ee0bcb7d995772788c9",
"assets/assets/audios/colecciones/colecciones-12.mp3": "cb432e7565d93a9d03ef720ff43e6e9d",
"assets/assets/audios/colecciones/colecciones-13.mp3": "38b8936bb78f39f85dc66c321eeafa79",
"assets/assets/audios/colecciones/colecciones-11.mp3": "6f3bfd3bf72209c3a3c3759467301beb",
"assets/assets/audios/colecciones/colecciones-9.wav": "7836f9bc186aef7eb7d7b406697af9a1",
"assets/assets/audios/colecciones/colecciones-10.mp3": "d6a3e8c562b50aaba8ccf1d9fba08e1a",
"assets/assets/audios/castillo/castillo-5.mp3": "7a480953826af86ad4bafae88ef312bb",
"assets/assets/audios/castillo/castillo-4.mp3": "2bb984792f6e188d87bd19c65fc1cc0e",
"assets/assets/audios/castillo/castillo-6.mp3": "7befbc47075d1856125006f8938e870a",
"assets/assets/audios/castillo/castillo-7.mp3": "01553ff9aea2dca44694270980ef3ec2",
"assets/assets/audios/castillo/castillo-3.mp3": "61d740bca50c12bd9cd4a8a8720a07c9",
"assets/assets/audios/castillo/castillo-2.mp3": "84a8d63f25e3630f745a93e1f9cf40d7",
"assets/assets/audios/castillo/castillo-1.mp3": "c2b63b04d3d2963adae139408c5e3f32",
"assets/assets/audios/castillo/castillo-9.mp3": "3ba2f2793badc4a768b6fc393eb2f781",
"assets/assets/audios/castillo/castillo-8.mp3": "abf889be4cb3715b51adf9114ac214fb",
"assets/assets/audios/castillo/castillo-10.mp3": "9cde48d3717c2289631fe4eb4e022aec",
"assets/assets/audios/refugio/refugio-1.mp3": "e904898b0189507e8494b433fbee6315",
"assets/assets/audios/refugio/refugio-3.mp3": "88cdeddaa5d8a3115abcc67daa880ca1",
"assets/assets/audios/refugio/refugio-2.mp3": "7c4bb17d03a839913d0bafe3fb52c420",
"assets/assets/audios/refugio/refugio-6.mp3": "8d32e01b3ad4e389d20d8b06ae92e916",
"assets/assets/audios/refugio/refugio-5.mp3": "c107fc1bf79eddf3dcc27d97462b6eea",
"assets/assets/audios/refugio/refugio-4.mp3": "be356cc78ce81a40567c9b9109af69b7",
"assets/assets/images/bunker-selec.svg": "328dbf28e925e902be1f0dc9e3a379e6",
"assets/assets/images/bunker.svg": "abb914323d2db7f83ae257641e104ecc",
"assets/assets/images/colecciones/colecciones-localizaciones.png": "58f6fa0d248db792c6fd7f7396871daa",
"assets/assets/images/colecciones/colecciones-arjonilla-10.jpg": "5a6579b9fe05d5c6aaf2045f0ff82c45",
"assets/assets/images/colecciones/colecciones-arjonilla-11.JPG": "28a0bb166ba146db88d98400c03f7234",
"assets/assets/images/colecciones/colecciones-arjonilla-13.JPG": "b618f330914b050ae4c2fc7d7c629099",
"assets/assets/images/colecciones/colecciones-arjonilla-12.JPG": "20ca437bf81de4509437443d71eb1d64",
"assets/assets/images/colecciones/colecciones-arjonilla-7.jpeg": "9c0019ab2e56b2fd9d40f3565d8d0177",
"assets/assets/images/colecciones/colecciones-arjonilla-16.jpg": "c7a874e0b07c5cad63ce24f2521d0c18",
"assets/assets/images/colecciones/colecciones-arjonilla-15.JPG": "13cb6edb7cb4989e5b62d53245c4b436",
"assets/assets/images/colecciones/colecciones-arjonilla-9.JPG": "2d8c4ace3d62e2203a0cb21eed3a6b7f",
"assets/assets/images/colecciones/colecciones-arjonilla-8.jpg": "e2d27a29e2d490b74c825e1af5e0ffbf",
"assets/assets/images/colecciones/colecciones-arjonilla-14.JPG": "5c94a4bbd54d5a452e6295741f4bc5e6",
"assets/assets/images/colecciones/colecciones-arjonilla-4.png": "5a1eb220a1344682c1847ffa7cf149df",
"assets/assets/images/colecciones/colecciones-arjonilla-5.jpeg": "7ef7a66c53a6023130f257ab1879306d",
"assets/assets/images/colecciones/colecciones-arjonilla-6.jpg": "0dfcc7747952f4cb80f4de731c68e597",
"assets/assets/images/colecciones/colecciones-arjonilla-3.png": "dbd4c4fd862eb0d3e9bde802d5d7ba3b",
"assets/assets/images/colecciones/colecciones-arjonilla-2.jpg": "7855ed8f973f7b929e8d0cf09de5a5fd",
"assets/assets/images/colecciones/colecciones-arjonilla-1.jpg": "4ecbdaa7f0eb16db1749d0c73751cfd9",
"assets/assets/images/castillo/castillo-arjonilla-10.png": "5b2d28e0fa516da1fa8d8e9bcae02569",
"assets/assets/images/castillo/castillo-arjonilla-9.jpg": "86a208a85882a39c8469f54a4de6562a",
"assets/assets/images/castillo/castillo-arjonilla-8.jpg": "69fd4df6ab91a8490381d1c11456d207",
"assets/assets/images/castillo/castillo-localizaciones.png": "b93707172a56d0bde3047b4499f6fa0e",
"assets/assets/images/castillo/castillo-arjonilla-1.png": "b1075f97c401ea5941b1ca3f2813ea7a",
"assets/assets/images/castillo/castillo-arjonilla-3.jpg": "35992a2fe6c005f991b5cbd5d0838b43",
"assets/assets/images/castillo/castillo-arjonilla-2.JPG": "20b0f98adf73ce4f40951c9bed04c437",
"assets/assets/images/castillo/castillo-arjonilla-6.jpg": "ebaa06e4ae3738aeb2a86f93cb02ccd6",
"assets/assets/images/castillo/castillo-arjonilla-7.jpg": "c6d0118dbe9e58ffe5618beeb68abf85",
"assets/assets/images/castillo/castillo-arjonilla-5.jpg": "a08d3ce4161a83090f6e90b935779d63",
"assets/assets/images/castillo/castillo-arjonilla-4.JPG": "f33174bbea5457f4703d4a9f3f0758dd",
"assets/assets/images/logo.png": "fb8ae0793207f782a9deb62d9e4af3b2",
"assets/assets/images/diputacion.png": "6535138ec33abf3e51ceb8352d714a59",
"assets/assets/images/castillo.svg": "a463555fb176c21519c1edab784ad118",
"assets/assets/images/castillo-selec.svg": "d6b89c3c17aa0af29c369db3bcbe99a0",
"assets/assets/images/refugio/refugio-arjonilla-6.jpg": "22fa9ab15796e3f89c67189e0aa94d2c",
"assets/assets/images/refugio/refugio-arjonilla-4.jpg": "a6239fe045671a84ffe5bba0bc3b775c",
"assets/assets/images/refugio/refugio-arjonilla-5.jpg": "cd80a42d9daaf5bc8e816b72add32996",
"assets/assets/images/refugio/refugio-arjonilla-1.jpg": "2e59a344e1553d8353a986f716cf5029",
"assets/assets/images/refugio/refugio-arjonilla-2.jpg": "f462f6c38225a8a8b184df3977cda4ce",
"assets/assets/images/refugio/refugio-arjonilla-3.jpg": "96867f9f62a7866f8b51d8f0ca7f3153",
"assets/assets/images/refugio/refugio-localizaciones.png": "750b7e2b17fbaa3f011f84e588e8b43a",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
