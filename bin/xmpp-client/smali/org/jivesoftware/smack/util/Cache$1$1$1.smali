.class Lorg/jivesoftware/smack/util/Cache$1$1$1;
.super Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/util/Cache$1$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/util/collections/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/jivesoftware/smack/util/Cache$1$1;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/util/Cache$1$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    .local p2, $anonymous0:Ljava/lang/Object;,"TK;"
    .local p3, $anonymous1:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lorg/jivesoftware/smack/util/Cache$1$1$1;->this$2:Lorg/jivesoftware/smack/util/Cache$1$1;

    .line 500
    invoke-direct {p0, p2, p3}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 505
    const-string v1, "Cannot set"

    .line 504
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
