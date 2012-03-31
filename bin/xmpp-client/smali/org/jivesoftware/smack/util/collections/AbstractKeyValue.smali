.class public abstract Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;
.super Ljava/lang/Object;
.source "AbstractKeyValue.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jivesoftware/smack/util/collections/KeyValue",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;,"Lorg/jivesoftware/smack/util/collections/AbstractKeyValue<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;,"Lorg/jivesoftware/smack/util/collections/AbstractKeyValue<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;,"Lorg/jivesoftware/smack/util/collections/AbstractKeyValue<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;,"Lorg/jivesoftware/smack/util/collections/AbstractKeyValue<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method
