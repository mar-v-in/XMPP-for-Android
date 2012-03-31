.class public Lorg/apache/harmony/javax/naming/directory/SearchControls;
.super Ljava/lang/Object;
.source "SearchControls.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OBJECT_SCOPE:I = 0x0

.field public static final ONELEVEL_SCOPE:I = 0x1

.field public static final SUBTREE_SCOPE:I = 0x2

.field private static final serialVersionUID:J = -0x226ca6de22f0c1cdL


# instance fields
.field private attributesToReturn:[Ljava/lang/String;

.field private countLimit:J

.field private derefLink:Z

.field private returnObj:Z

.field private searchScope:I

.field private timeLimit:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 147
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>(IJI[Ljava/lang/String;ZZ)V

    .line 148
    return-void
.end method

.method public constructor <init>(IJI[Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "searchScope"
    .parameter "countLimit"
    .parameter "timeLimit"
    .parameter "attributesToReturn"
    .parameter "returnObj"
    .parameter "derefLink"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->searchScope:I

    .line 179
    iput-wide p2, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->countLimit:J

    .line 180
    iput p4, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->timeLimit:I

    .line 181
    iput-object p5, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->attributesToReturn:[Ljava/lang/String;

    .line 182
    iput-boolean p7, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->derefLink:Z

    .line 183
    iput-boolean p6, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->returnObj:Z

    .line 184
    return-void
.end method


# virtual methods
.method public getCountLimit()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->countLimit:J

    return-wide v0
.end method

.method public getDerefLinkFlag()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->derefLink:Z

    return v0
.end method

.method public getReturningAttributes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->attributesToReturn:[Ljava/lang/String;

    return-object v0
.end method

.method public getReturningObjFlag()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->returnObj:Z

    return v0
.end method

.method public getSearchScope()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->searchScope:I

    return v0
.end method

.method public getTimeLimit()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->timeLimit:I

    return v0
.end method

.method public setCountLimit(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 255
    iput-wide p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->countLimit:J

    .line 256
    return-void
.end method

.method public setDerefLinkFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 269
    iput-boolean p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->derefLink:Z

    .line 270
    return-void
.end method

.method public setReturningAttributes([Ljava/lang/String;)V
    .locals 0
    .parameter "as"

    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->attributesToReturn:[Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setReturningObjFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 293
    iput-boolean p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->returnObj:Z

    .line 294
    return-void
.end method

.method public setSearchScope(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 304
    iput p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->searchScope:I

    .line 305
    return-void
.end method

.method public setTimeLimit(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 316
    iput p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchControls;->timeLimit:I

    .line 317
    return-void
.end method
