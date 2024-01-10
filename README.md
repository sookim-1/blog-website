# blog-website
![ci](https://github.com/sookim-1/blog-website/actions/workflows/ci.yml/badge.svg)
![create_post](https://github.com/sookim-1/blog-website/actions/workflows/create_post.yml/badge.svg)
![deploy](https://github.com/sookim-1/blog-website/actions/workflows/deploy.yml/badge.svg)
github 블로그 웹사이트 소스

## 배포방법
1. [Content/posts](./Content/posts) 폴더에 마크다운문서를 추가합니다.
2. 추가한 후 main브랜치에 Merge되면 [ci.yml](./.github/workflows/) 워크플로가 동작합니다.
3. [deploy.yml](./.github/workflows/) 워크플로를 실행하면 [sookim-1.github.io](https://github.com/sookim-1/sookim-1.github.io) 원격저장소에 배포됩니다.
