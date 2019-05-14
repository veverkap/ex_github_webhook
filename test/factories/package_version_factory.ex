def package_version_factory do
  %{
    author: build(:author),
    body:
      "# hello-world-npm\n\nThis is a simple npm package that demonstrates the [Github Package Registry](https://github.com/features/package-registry).\n\n## Installation \n\n`$ npm install`\n\n## Usage\n\n```\nconst myPackage = require('hello-world-node-package');\nmyPackage.helloWorld();\n```\n\n",
    body_html:
      "<h1>hello-world-npm</h1>\n<p>This is a simple npm package that demonstrates the <a href=\"https://github.com/features/package-registry\">Github Package Registry</a>.</p>\n<h2>Installation</h2>\n<p><code>$ npm install</code></p>\n<h2>Usage</h2>\n<pre><code>const myPackage = require('hello-world-node-package');\nmyPackage.helloWorld();\n</code></pre>",
    created_at: "2019-05-09T23:28:29Z",
    draft: false,
    html_url: "https://github.com/Codertocat/hello-world-npm/packages/10696?version=1.0.0",
    id: 24147,
    installation_command: "npm install @Codertocat/@1.0.0",
    manifest:
      "{\"_from\":\"\",\"_id\":\"@codertocat/hello-world-npm@1.0.0\",\"_nodeVersion\":\"10.0.0\",\"_npmUser\":{},\"_npmVersion\":\"5.6.0\",\"_shasum\":\"\",\"author\":{\"name\":\"Codertocat\"},\"bugs\":{\"url\":\"https://github.com/Codertocat/hello-world-npm/issues\"},\"description\":\"A simple npm package to demonstrate GitHub Package Registry\",\"dependencies\":null,\"devDependencies\":null,\"peerDependencies\":null,\"dist\":{\"integrity\":\"sha512-CcChRwjJk+pvGVERbgdjc0w5h6HrOs6jK6OJuHmFcmbnGuhiy9tPMtb4WcSSdvwrktAxf96LsJBNqeIHAEHl3A==\",\"shasum\":\"a413c56a12997ca1b56715ebe81d8c6e0ffe6abb\",\"tarball\":\"http://npm.pkg.github.com/@codertocat/hello-world-npm/-/@codertocat/hello-world-npm-1.0.0.tgz\"},\"gitHead\":\"6c62fb45fe66bfb1ea9a66abc38f6a0cc974292b\",\"homepage\":\"https://github.com/Codertocat/hello-world-npm#readme\",\"license\":\"ISC\",\"main\":\"index.js\",\"name\":\"@codertocat/hello-world-npm\",\"repository\":{\"type\":\"git\",\"url\":\"git+https://github.com/Codertocat/hello-world-npm.git\"},\"scripts\":{\"test\":\"echo \\\"Error: no test specified\\\" \\u0026\\u0026 exit 1\"},\"version\":\"1.0.0\"}",
    metadata: [],
    package_files: [
      %{
        content_type: "application/octet-stream",
        created_at: "2019-05-09T23:28:30Z",
        download_url:
          "https://github-production-registry-package-file-4f11e5.s3.amazonaws.com/185882436/3e6d9b00-7288-11e9-9d72-c0df4c711800?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20190509%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20190509T232830Z&X-Amz-Expires=300&X-Amz-Signature=4b825c49cd93370123a77d0f97a4ebb0d44efb76da46faf1e382f0c668b35819&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=filename%3Dhello-world-npm-1.0.0-npm.tgz&response-content-type=application%2Foctet-stream",
        id: 92167,
        md5: "56ebbd5a5a03367f62d0c732bafd3c66",
        name: "hello-world-npm-1.0.0-npm.tgz",
        sha1: "a413c56a12997ca1b56715ebe81d8c6e0ffe6abb",
        sha256: "ba703915435b6ca2ca666b5d8332db34bf9dc37a198ed70d3a5fa5d08b8415c8",
        size: 654,
        state: "uploaded",
        updated_at: "2019-05-09T23:28:30Z"
      }
    ],
    prerelease: false,
    release: build(:release),
    summary: "A simple npm package to demonstrate GitHub Package Registry",
    tag_name: "1.0.0",
    target_commitish: "master",
    target_oid: "6c62fb45fe66bfb1ea9a66abc38f6a0cc974292b",
    updated_at: "2019-05-09T23:28:30Z",
    version: "1.0.0"
  }
end
