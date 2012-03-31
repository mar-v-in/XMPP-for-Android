.class public Lorg/jivesoftware/smackx/ReportedData$Row;
.super Ljava/lang/Object;
.source "ReportedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ReportedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/ReportedData$Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ReportedData$Row;->fields:Ljava/util/List;

    .line 145
    iput-object p1, p0, Lorg/jivesoftware/smackx/ReportedData$Row;->fields:Ljava/util/List;

    .line 146
    return-void
.end method

.method private getFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ReportedData$Row;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    return-object v0
.end method


# virtual methods
.method public getValues(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .parameter "variable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ReportedData$Row;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/ReportedData$Field;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 169
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ReportedData$Field;

    .line 170
    .local v0, field:Lorg/jivesoftware/smackx/ReportedData$Field;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ReportedData$Field;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ReportedData$Field;->getValues()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0
.end method
