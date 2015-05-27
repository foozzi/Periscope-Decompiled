.class public Lorg/spongycastle/jce/provider/PKIXPolicyNode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected azn:Z

.field protected bbD:Ljava/util/List;

.field protected bbE:I

.field protected bbF:Ljava/util/Set;

.field protected bbG:Ljava/security/cert/PolicyNode;

.field protected bbH:Ljava/util/Set;

.field protected bbI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    .line 37
    iput p2, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbE:I

    .line 38
    iput-object p3, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbF:Ljava/util/Set;

    .line 39
    iput-object p4, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbG:Ljava/security/cert/PolicyNode;

    .line 40
    iput-object p5, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbH:Ljava/util/Set;

    .line 41
    iput-object p6, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbI:Ljava/lang/String;

    .line 42
    iput-boolean p7, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->azn:Z

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->oX()Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbE:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbF:Ljava/util/Set;

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbG:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbH:Ljava/util/Set;

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbI:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCritical()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->azn:Z

    return v0
.end method

.method public oX()Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 13

    .line 136
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbF:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 138
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 144
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbH:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 145
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbE:I

    move-object v3, v8

    move-object v5, v10

    new-instance v6, Ljava/lang/String;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbI:Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->azn:Z

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object v11, v0

    .line 158
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 159
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->oX()Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v12

    .line 162
    invoke-virtual {v12, v11}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˎ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 163
    invoke-virtual {v11, v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 164
    goto :goto_2

    .line 166
    :cond_2
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 114
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbI:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v0, " {\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v0, "}\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʺ(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->azn:Z

    .line 100
    return-void
.end method

.method public ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1, p0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˎ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 50
    return-void
.end method

.method public ˋ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public ˎ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbG:Ljava/security/cert/PolicyNode;

    .line 105
    return-void
.end method
