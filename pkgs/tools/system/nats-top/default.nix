{ lib
, buildGoModule
, fetchFromGitHub
}:

buildGoModule rec {
  pname = "nats-top";
  version = "0.6.1";

  src = fetchFromGitHub {
    owner = "nats-io";
    repo = pname;
    rev = "refs/tags/v${version}";
    hash = "sha256-YQNIEhs/KNJp7184zBk0NZyXRWLQDaySZBJWe11vI9E=";
  };

  vendorHash = "sha256-IhaeM/stU9O48reT/mUadSkZDz0JXKCXjSRw8TMesTY=";

  meta = with lib; {
    description = "top-like tool for monitoring NATS servers";
    homepage = "https://github.com/nats-io/nats-top";
    changelog = "https://github.com/nats-io/nats-top/releases/tag/v${version}";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ fab ];
  };
}
