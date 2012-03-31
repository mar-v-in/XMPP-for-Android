.class public Lorg/jivesoftware/smack/PrivacyList;
.super Ljava/lang/Object;
.source "PrivacyList.java"


# instance fields
.field private final isActiveList:Z

.field private final isDefaultList:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private final listName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "isActiveList"
    .parameter "isDefaultList"
    .parameter "listName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p4, privacyItems:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lorg/jivesoftware/smack/PrivacyList;->isActiveList:Z

    .line 37
    iput-boolean p2, p0, Lorg/jivesoftware/smack/PrivacyList;->isDefaultList:Z

    .line 38
    iput-object p3, p0, Lorg/jivesoftware/smack/PrivacyList;->listName:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lorg/jivesoftware/smack/PrivacyList;->items:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyList;->items:Ljava/util/List;

    return-object v0
.end method

.method public isActiveList()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PrivacyList;->isActiveList:Z

    return v0
.end method

.method public isDefaultList()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PrivacyList;->isDefaultList:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyList;->listName:Ljava/lang/String;

    return-object v0
.end method
