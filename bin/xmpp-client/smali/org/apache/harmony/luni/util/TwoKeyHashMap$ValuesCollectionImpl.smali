.class Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;
.super Ljava/util/AbstractCollection;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesCollectionImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    .line 264
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I
    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$2(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->createValueCollectionIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I
    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$2(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    return v0
.end method
