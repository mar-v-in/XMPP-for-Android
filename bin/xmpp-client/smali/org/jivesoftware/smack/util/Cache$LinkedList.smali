.class Lorg/jivesoftware/smack/util/Cache$LinkedList;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedList"
.end annotation


# instance fields
.field private final head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    const-string v1, "head"

    .line 137
    invoke-direct {v0, v1, v2, v2}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;-><init>(Ljava/lang/Object;Lorg/jivesoftware/smack/util/Cache$LinkedListNode;Lorg/jivesoftware/smack/util/Cache$LinkedListNode;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 143
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v2, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v2, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 144
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/Cache$LinkedListNode;
    .locals 3
    .parameter "object"

    .prologue
    .line 170
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v1, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 171
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 170
    invoke-direct {v0, p1, v1, v2}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;-><init>(Ljava/lang/Object;Lorg/jivesoftware/smack/util/Cache$LinkedListNode;Lorg/jivesoftware/smack/util/Cache$LinkedListNode;)V

    .line 172
    .local v0, node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v0, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 173
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v0, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 174
    return-object v0
.end method

.method public addFirst(Lorg/jivesoftware/smack/util/Cache$LinkedListNode;)Lorg/jivesoftware/smack/util/Cache$LinkedListNode;
    .locals 1
    .parameter

    .prologue
    .line 154
    .local p1, node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v0, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v0, p1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v0, p1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 156
    iget-object v0, p1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object p1, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 157
    iget-object v0, p1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object p1, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 158
    return-object p1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v0

    .line 183
    .local v0, node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    :goto_0
    if-nez v0, :cond_0

    .line 189
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v3, v2, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v3, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 190
    return-void

    .line 184
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->remove()V

    .line 185
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v0, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 199
    .local v0, node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    if-ne v0, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    .end local v0           #node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v1, v2, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 214
    .local v1, node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, buf:Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache$LinkedList;->head:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    if-ne v1, v2, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 216
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, v1, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    goto :goto_0
.end method
