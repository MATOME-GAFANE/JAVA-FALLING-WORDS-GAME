JAVAC=/usr/bin/javac

.SUFFIXES: .java .class

SRCDIR=src
BINDIR=bin
DOC=./doc

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES=Score.class WordDictionary.class WordRecord.class WordPanel.class WordChecker.class WordMover.class WordApp.class
CLASSE=Score.java WordDictionary.java WordRecord.java WordPanel.java WordChecker.java WordMover.java WordApp.java
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)
SOURCEFILES=$(CLASSE:%.java=$(SRCDIR)/%.java)

default: $(CLASS_FILES)

clean:
	rm $(BINDIR)/*.class
run:
	java -cp bin WordApp 30 5 "example_dict.txt"> output.txt
	


doc:	$(CLASS_FILES)
	javadoc  -d $(DOC) $(SOURCEFILES)

