# This file has been generated by dapp2nix 0.1.0, do not edit.
{ solidityPackage, solc, dapp2 }:

let
  inherit (builtins) map listToAttrs attrNames attrValues;
  mapAttrs = if (builtins ? mapAttrs)
    then builtins.mapAttrs
    else f: attrs:
      listToAttrs (map
        (name: { inherit name; value = f name attrs."${name}"; })
        (attrNames attrs));

  defaults = {
    inherit solc;
    test-hevm = dapp2.test-hevm;
    doCheck = true;
  };

  package = spec: let
    spec' = defaults // (removeAttrs spec [ "repo'" "src'" ]);
    deps = map (spec:
      package (spec // { inherit (spec') solc test-hevm doCheck; })
    ) (attrValues spec'.deps);
  in solidityPackage (spec' // { inherit deps; });

  packageSpecs = mapAttrs (_: package);

  specs = rec {
    ds-auth_f783169 = rec {
      name = "ds-auth";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-auth-f783169-source";
        url = "https://github.com/dapphub/ds-auth";
        rev = "f783169408c278f85e26d77ba7b45823ed9503dd";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-chief_58a02ff = rec {
      name = "ds-chief";
      deps = {
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-chief-58a02ff-source";
        url = "https://github.com/dapphub/ds-chief";
        rev = "58a02ff50bdbf5729252aab91bc468a3e77be6bb";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-exec_c53aab4 = rec {
      name = "ds-exec";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-exec-c53aab4-source";
        url = "https://github.com/dapphub/ds-exec";
        rev = "c53aab4ba91645b30b0644972ef016b5ee606ca8";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-guard_4678e1c = rec {
      name = "ds-guard";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-guard-4678e1c-source";
        url = "https://github.com/dapphub/ds-guard";
        rev = "4678e1c74fce1542f1379f11325d7bfbbb897344";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-math_784079b = rec {
      name = "ds-math";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-math-784079b-source";
        url = "https://github.com/dapphub/ds-math";
        rev = "784079b72c4d782b022b3e893a7c5659aa35971a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-note_beef816 = rec {
      name = "ds-note";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-note-beef816-source";
        url = "https://github.com/dapphub/ds-note";
        rev = "beef8166f2184a4bac3d02abdb944647fd735060";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-pause_e2ac2b0 = rec {
      name = "ds-pause";
      deps = {
        ds-chief = ds-chief_58a02ff;
        ds-proxy = ds-proxy_379f5e2;
        ds-spell = ds-spell_c908b78;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-pause-e2ac2b0-source";
        url = "https://github.com/dapphub/ds-pause";
        rev = "e2ac2b057b5b9d54e4b9ebae2feef34b37223bc6";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-proxy_379f5e2 = rec {
      name = "ds-proxy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-proxy-379f5e2-source";
        url = "https://github.com/dapphub/ds-proxy";
        rev = "379f5e2fc0a6ed5a7a96d3f211cc5ed8761baf00";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-roles_0138372 = rec {
      name = "ds-roles";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-roles-0138372-source";
        url = "https://github.com/dapphub/ds-roles";
        rev = "01383725a4240000c0e274e55bdcf251570fd486";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-spell_c908b78 = rec {
      name = "ds-spell";
      deps = {
        ds-exec = ds-exec_c53aab4;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-spell-c908b78-source";
        url = "https://github.com/dapphub/ds-spell";
        rev = "c908b7807f08661b4eca97adff6d9561d0116244";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-stop_6e2bda6 = rec {
      name = "ds-stop";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-stop-6e2bda6-source";
        url = "https://github.com/dapphub/ds-stop";
        rev = "6e2bda69cb3cbf25a475491d9bc22969adb05993";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-test_a4e4005 = rec {
      name = "ds-test";
      deps = {
      };
      repo' = {
        name = "ds-test-a4e4005-source";
        url = "https://github.com/dapphub/ds-test";
        rev = "a4e40050b809705b15867939f5829540c50cb84f";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-thing_5e49fcb = rec {
      name = "ds-thing";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-math = ds-math_784079b;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-thing-5e49fcb-source";
        url = "https://github.com/dapphub/ds-thing";
        rev = "5e49fcbdf4ef8ccd241423ed114576f51c42f1e0";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-token_cee36a1 = rec {
      name = "ds-token";
      deps = {
        ds-math = ds-math_784079b;
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-token-cee36a1-source";
        url = "https://github.com/dapphub/ds-token";
        rev = "cee36a14685b3f93ffa0332853d3fcd943fe96a5";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-value_f307171 = rec {
      name = "ds-value";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
      };
      repo' = {
        name = "ds-value-f307171-source";
        url = "https://github.com/dapphub/ds-value";
        rev = "f3071713afbd583991637f8cfab5e0d29466dffd";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-weth_dfada5b = rec {
      name = "ds-weth";
      deps = {
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-weth-dfada5b-source";
        url = "https://github.com/dapphub/ds-weth";
        rev = "dfada5bca7a00046c1ddc37c0c43106a8c0a4e5a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss_0f8880e = rec {
      name = "dss";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-value = ds-value_f307171;
      };
      repo' = {
        name = "dss-0f8880e-source";
        url = "https://github.com/makerdao/dss";
        rev = "0f8880e56a5cbb3b13f0b7104d053654c772ef6a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    erc20_f322aac = rec {
      name = "erc20";
      deps = {
      };
      repo' = {
        name = "erc20-f322aac-source";
        url = "https://github.com/dapphub/erc20";
        rev = "f322aaca414db343337814097d2af43214bee96c";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy_cc978d5 = rec {
      name = "dss-deploy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-guard = ds-guard_4678e1c;
        ds-note = ds-note_beef816;
        ds-pause = ds-pause_e2ac2b0;
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-weth = ds-weth_dfada5b;
        dss = dss_0f8880e;
      };
      repo' = {
        name = "dss-deploy-cc978d5-source";
        url = "git@github.com:makerdao/dss-deploy";
        rev = "cc978d573b10d91915f3cc41650510c7e3db12fc";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    this = dss-deploy_cc978d5 // { src' = ../.; src = ../src; };
  };
in {
  inherit package packageSpecs specs;
  this = package specs.this;
  deps = packageSpecs specs.this.deps;
}
