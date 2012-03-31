.class public Lorg/apache/harmony/javax/naming/directory/ModificationItem;
.super Ljava/lang/Object;
.source "ModificationItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x69199e89ac11aae2L


# instance fields
.field private final attr:Lorg/apache/harmony/javax/naming/directory/Attribute;

.field private final mod_op:I


# direct methods
.method public constructor <init>(ILorg/apache/harmony/javax/naming/directory/Attribute;)V
    .locals 2
    .parameter "operation"
    .parameter "attribute"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p2, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.13"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    .line 75
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string v1, "jndi.14"

    .line 79
    invoke-static {v1, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput p1, p0, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->mod_op:I

    .line 83
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->attr:Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 84
    return-void
.end method


# virtual methods
.method public getAttribute()Lorg/apache/harmony/javax/naming/directory/Attribute;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->attr:Lorg/apache/harmony/javax/naming/directory/Attribute;

    return-object v0
.end method

.method public getModificationOp()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->mod_op:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->mod_op:I

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->attr:Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :pswitch_0
    const-string v1, "Operation is add attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v1, "Operation is remove attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :pswitch_2
    const-string v1, "Operation is replace attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
