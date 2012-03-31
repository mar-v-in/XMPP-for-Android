.class Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;
.super Ljava/lang/Object;
.source "DirectoryManager.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/DirContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/naming/spi/DirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Context2DirContextWrapper"
.end annotation


# instance fields
.field private final cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;

.field private final ctx:Lorg/apache/harmony/javax/naming/Context;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/naming/Context;Lorg/apache/harmony/javax/naming/CannotProceedException;)V
    .locals 0
    .parameter "ctx"
    .parameter "cpe"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->ctx:Lorg/apache/harmony/javax/naming/Context;

    .line 75
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;

    .line 76
    return-void
.end method

.method private getContext()Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/CannotProceedException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->ctx:Lorg/apache/harmony/javax/naming/Context;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->ctx:Lorg/apache/harmony/javax/naming/Context;

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 189
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;

    throw v0
.end method

.method private getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/CannotProceedException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->ctx:Lorg/apache/harmony/javax/naming/Context;

    instance-of v0, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->ctx:Lorg/apache/harmony/javax/naming/Context;

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 197
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;

    throw v0
.end method


# virtual methods
.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "s"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "s"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 104
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .parameter "n"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 93
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 109
    return-void
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "pfx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "n"
    .parameter "pfx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 146
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/CannotProceedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "s"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->getNameInNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/CannotProceedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookupLink(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 311
    return-void
.end method

.method public modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 1
    .parameter "s"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 317
    return-void
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 299
    return-void
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 1
    .parameter "name"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 305
    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "s"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 339
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .parameter "n"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 328
    return-void
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sOld"
    .parameter "sNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "nOld"
    .parameter "nNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    .line 349
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getDirContext()Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/CannotProceedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 412
    :goto_0
    return-object v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->unbind(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public unbind(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;->getContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->unbind(Lorg/apache/harmony/javax/naming/Name;)V

    .line 419
    return-void
.end method
