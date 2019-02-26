◊(local-require pollen/tag)
◊(define title (select-from-metas 'title here))
◊(define subtitle (select-from-metas 'subtitle here))
◊(define prev-page
   (let ((p (previous here)))
     (if (equal? p 'index.html)
         #f
         p)))
◊(define next-page (next here))
◊(define parent-page (parent here))
◊(define here-children (children here))
◊(define (make-subnav children)
  (->html
    (nav #:class "subnav"
      (apply ul
        (for/list ([child (in-list children)])
          (li (link (symbol->string child) (select-from-metas 'title child))))))))
◊(define (ref page txt)
  (->html
    (link (symbol->string page) txt)))
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>◊|title|</title>
        <link rel="stylesheet" type="text/css" href="/css/main.css" />
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
    </head>
    <body>
      <article class="chapter">
        <header>
            <h1>◊|title|</h1>
            <h2>◊|subtitle|</h2>
        </header>

        ◊(->html doc #:splice? #t)

        ◊when/splice[here-children]{
            ◊(make-subnav here-children)
        }
      </article>

      <footer>
        <nav class="movenav">
          ◊when/splice[prev-page]{
            <span class="prev">
              ◊(ref prev-page (string-append  "← " (select-from-metas 'title prev-page)))
            </span>
          }
          ◊when/splice[parent-page]{
            <span class="parent">
              ◊(ref parent-page "Chapter")
            </span>
          }
          <span class="home">
            <a href="/">Home</a>
          </span>

          ◊when/splice[next-page]{
            <span class="next">
              ◊(ref next-page (string-append (select-from-metas 'title next-page) " →"))
            </span>
          }
        </nav>
      </footer>

    </body>
</html>
◊;←
◊;→
◊;↑
◊;↓
