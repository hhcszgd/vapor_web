import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // "It works" page
    router.get { req in
        return try req.view().render("welcome")
    }
    router.get("a1") { (req) -> Future<View> in
        return try req.view().render("test1",["myVerb":"a ha ha"])
    }
    router.get("books") { (req) -> Future<View> in
        
        var  books = [Book]()
        for i in 0...111 {
            let book = Book(title: "<<资治通鉴\(i)>>", pages: i)
            books.append(book )
        }
        return try req.view().render("books",["books":books])
    }
    // Says hello
    router.get("hello", String.parameter) { req -> Future<View> in
        return try req.view().render("hello", [
            "name": req.parameters.next(String.self)
        ])
    }
}
