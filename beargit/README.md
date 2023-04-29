beargit
=======

Simplified git implementation as seen on the popular university course
https://github.com/cs61c-fall2015/proj1-starter

Readme:
https://inst.eecs.berkeley.edu/~cs61c/fa15/projs/01/ 


# Analysis of intial git implementation

The following is a brief summary of info found in [hacking git](https://git-scm.com/docs/user-manual#hacking-git)
The project is small enough and contains a good README
To get at the initial commit:

```sh
  git clone git@github.com:git/git.git
  cd git
  git switch --detach e83c5163
```

** Basic object types
There were basically two types of abstraction used in the initial version:
the "object database", and the "current directory cache". All objects are
named by their content, which is approximated by the SHA1 hash of the object
itself. Together, they form a database which is literally a content-addressable
collection of objects. The zlib library is leveraged to produce the objects.


### The Object Database (SHA1_FILE_DIRECTORY)
+ Content-addressable collection of objects.
  - objects named by their content, approximated by the SHA1 hash of the object
    itself. This hash is created using the _compressed_ objects.
  - an object can be tested for consistency independently of its contents or
    type. To do this, two things must be confirmed: (a) the hashes of the
    object match the content of the file and (b) the object successfully
    inflates to a stream of bytes that forms a sequence of `<ascii tag without space> +
    <space> + <ascii decimal size> + <byte\0> + <binary object data>`
+ BLOB: "blob" of binary data, no metadata
+ TREE: list of permissions for the "blob" data
+ CHANGESET: history of the object, describes the physical state of tree
             and how we got there
+ TRUST: handled externally, but the use of hashing internally has some imortant
         consequences, see the README

### Current Directory Cache (".dircache/index")

+ Simple binary file, contains an efficient representation of a virtual directory
  content at some random time. This is done by keeping an array that associates
  a set of names, dates, permissions and content (aka "blob") objects together.
  Cache has no long term meaning. Objects ordered by name, names unique at any
  point in time.

+ Essential characteristics (the ONLY two things the directory cache does):
  
  (a) it can re-generate the full state it caches (not just the directory structure,
      through the "blob" object it can regenerate the data too)

      A special case of this is that a "tree object" can be recreated at any
      time using only the current directory cache. That is, all the files content
      and metadata. It does this without having to look at any other data.
      This means that the current directory cache specifies one and only one "tree"
      object". However, it has additional data to make it easy to match up that tree
      object with what has happened in the directory.

  (b) It can produce diffs efficiently. i.e. it has efficient methods for finding
      inconsistencies between the cached state ("tree object waiting to be instantiated")
      and the current state.


Note on terminology:
+ cache is now index
+ CHANGESET is now commit
