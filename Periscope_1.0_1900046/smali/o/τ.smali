.class Lo/τ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﮆ;


# instance fields
.field private final ec:Lo/ﮆ;

.field private final es:Lo/ﺭ;

.field private final hT:Lo/ﺀ;

.field private final hU:Lo/ﺀ;

.field private final hV:Lo/ﺪ;

.field private final hW:Lo/ﭥ;

.field private hX:Ljava/lang/String;

.field private hY:I

.field private hZ:Lo/ﮆ;

.field private final height:I

.field private final hg:Lo/ғ;

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ﮆ;IILo/ﺀ;Lo/ﺀ;Lo/ﺭ;Lo/ﺪ;Lo/ғ;Lo/ﭥ;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/τ;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lo/τ;->ec:Lo/ﮆ;

    .line 36
    iput p3, p0, Lo/τ;->width:I

    .line 37
    iput p4, p0, Lo/τ;->height:I

    .line 38
    iput-object p5, p0, Lo/τ;->hT:Lo/ﺀ;

    .line 39
    iput-object p6, p0, Lo/τ;->hU:Lo/ﺀ;

    .line 40
    iput-object p7, p0, Lo/τ;->es:Lo/ﺭ;

    .line 41
    iput-object p8, p0, Lo/τ;->hV:Lo/ﺪ;

    .line 42
    iput-object p9, p0, Lo/τ;->hg:Lo/ғ;

    .line 43
    iput-object p10, p0, Lo/τ;->hW:Lo/ﭥ;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 55
    if-ne p0, p1, :cond_0

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 59
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/τ;

    move-object v2, v0

    .line 64
    iget-object v0, p0, Lo/τ;->id:Ljava/lang/String;

    iget-object v1, v2, Lo/τ;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_3
    iget-object v0, p0, Lo/τ;->ec:Lo/ﮆ;

    iget-object v1, v2, Lo/τ;->ec:Lo/ﮆ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_4
    iget v0, p0, Lo/τ;->height:I

    iget v1, v2, Lo/τ;->height:I

    if-eq v0, v1, :cond_5

    .line 69
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_5
    iget v0, p0, Lo/τ;->width:I

    iget v1, v2, Lo/τ;->width:I

    if-eq v0, v1, :cond_6

    .line 71
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_6
    iget-object v0, p0, Lo/τ;->es:Lo/ﺭ;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v2, Lo/τ;->es:Lo/ﺭ;

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 73
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_9
    iget-object v0, p0, Lo/τ;->es:Lo/ﺭ;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/τ;->es:Lo/ﺭ;

    invoke-interface {v0}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lo/τ;->es:Lo/ﺭ;

    invoke-interface {v1}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 75
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_a
    iget-object v0, p0, Lo/τ;->hU:Lo/ﺀ;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_2
    iget-object v1, v2, Lo/τ;->hU:Lo/ﺀ;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 77
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_d
    iget-object v0, p0, Lo/τ;->hU:Lo/ﺀ;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/τ;->hU:Lo/ﺀ;

    invoke-interface {v0}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lo/τ;->hU:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 79
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_e
    iget-object v0, p0, Lo/τ;->hT:Lo/ﺀ;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    :goto_4
    iget-object v1, v2, Lo/τ;->hT:Lo/ﺀ;

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :goto_5
    xor-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 81
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_11
    iget-object v0, p0, Lo/τ;->hT:Lo/ﺀ;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lo/τ;->hT:Lo/ﺀ;

    invoke-interface {v0}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lo/τ;->hT:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 83
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_12
    iget-object v0, p0, Lo/τ;->hV:Lo/ﺪ;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_6
    iget-object v1, v2, Lo/τ;->hV:Lo/ﺪ;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    :goto_7
    xor-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 85
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_15
    iget-object v0, p0, Lo/τ;->hV:Lo/ﺪ;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lo/τ;->hV:Lo/ﺪ;

    invoke-interface {v0}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lo/τ;->hV:Lo/ﺪ;

    invoke-interface {v1}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 87
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_16
    iget-object v0, p0, Lo/τ;->hg:Lo/ғ;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_8

    :cond_17
    const/4 v0, 0x0

    :goto_8
    iget-object v1, v2, Lo/τ;->hg:Lo/ғ;

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_9

    :cond_18
    const/4 v1, 0x0

    :goto_9
    xor-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 89
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_19
    iget-object v0, p0, Lo/τ;->hg:Lo/ғ;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lo/τ;->hg:Lo/ғ;

    invoke-interface {v0}, Lo/ғ;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lo/τ;->hg:Lo/ғ;

    invoke-interface {v1}, Lo/ғ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 91
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_1a
    iget-object v0, p0, Lo/τ;->hW:Lo/ﭥ;

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    :goto_a
    iget-object v1, v2, Lo/τ;->hW:Lo/ﭥ;

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    :goto_b
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 93
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_1d
    iget-object v0, p0, Lo/τ;->hW:Lo/ﭥ;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lo/τ;->hW:Lo/ﭥ;

    invoke-interface {v0}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lo/τ;->hW:Lo/ﭥ;

    invoke-interface {v1}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    iget v0, p0, Lo/τ;->hY:I

    if-nez v0, :cond_6

    .line 103
    iget-object v0, p0, Lo/τ;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lo/τ;->hY:I

    .line 104
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->ec:Lo/ﮆ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 105
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/τ;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 106
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/τ;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 107
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->hT:Lo/ﺀ;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/τ;->hT:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 108
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->hU:Lo/ﺀ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/τ;->hU:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 109
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->es:Lo/ﺭ;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/τ;->es:Lo/ﺭ;

    invoke-interface {v1}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 110
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->hV:Lo/ﺪ;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/τ;->hV:Lo/ﺪ;

    invoke-interface {v1}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 111
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->hg:Lo/ғ;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/τ;->hg:Lo/ғ;

    invoke-interface {v1}, Lo/ғ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 112
    iget v0, p0, Lo/τ;->hY:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/τ;->hW:Lo/ﭥ;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/τ;->hW:Lo/ﭥ;

    invoke-interface {v1}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    iput v0, p0, Lo/τ;->hY:I

    .line 114
    :cond_6
    iget v0, p0, Lo/τ;->hY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lo/τ;->hX:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->ec:Lo/ﮆ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/τ;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/τ;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->hT:Lo/ﺀ;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/τ;->hT:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->hU:Lo/ﺀ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/τ;->hU:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->es:Lo/ﺭ;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/τ;->es:Lo/ﺭ;

    invoke-interface {v1}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->hV:Lo/ﺪ;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/τ;->hV:Lo/ﺪ;

    invoke-interface {v1}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->hg:Lo/ғ;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/τ;->hg:Lo/ғ;

    invoke-interface {v1}, Lo/ғ;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/τ;->hW:Lo/ﭥ;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/τ;->hW:Lo/ﭥ;

    invoke-interface {v1}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    const-string v1, ""

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/τ;->hX:Ljava/lang/String;

    .line 156
    :cond_6
    iget-object v0, p0, Lo/τ;->hX:Ljava/lang/String;

    return-object v0
.end method

.method public ˊ(Ljava/security/MessageDigest;)V
    .locals 3

    .line 161
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lo/τ;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lo/τ;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 165
    iget-object v0, p0, Lo/τ;->ec:Lo/ﮆ;

    invoke-interface {v0, p1}, Lo/ﮆ;->ˊ(Ljava/security/MessageDigest;)V

    .line 166
    iget-object v0, p0, Lo/τ;->id:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    iget-object v0, p0, Lo/τ;->hT:Lo/ﺀ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/τ;->hT:Lo/ﺀ;

    invoke-interface {v0}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    iget-object v0, p0, Lo/τ;->hU:Lo/ﺀ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/τ;->hU:Lo/ﺀ;

    invoke-interface {v0}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    iget-object v0, p0, Lo/τ;->es:Lo/ﺭ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/τ;->es:Lo/ﺭ;

    invoke-interface {v0}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    iget-object v0, p0, Lo/τ;->hV:Lo/ﺪ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/τ;->hV:Lo/ﺪ;

    invoke-interface {v0}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_3
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    iget-object v0, p0, Lo/τ;->hW:Lo/ﭥ;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/τ;->hW:Lo/ﭥ;

    invoke-interface {v0}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v0, ""

    :goto_4
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    return-void
.end method

.method public ๆ()Lo/ﮆ;
    .locals 3

    .line 47
    iget-object v0, p0, Lo/τ;->hZ:Lo/ﮆ;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lo/ڐ;

    iget-object v1, p0, Lo/τ;->id:Ljava/lang/String;

    iget-object v2, p0, Lo/τ;->ec:Lo/ﮆ;

    invoke-direct {v0, v1, v2}, Lo/ڐ;-><init>(Ljava/lang/String;Lo/ﮆ;)V

    iput-object v0, p0, Lo/τ;->hZ:Lo/ﮆ;

    .line 50
    :cond_0
    iget-object v0, p0, Lo/τ;->hZ:Lo/ﮆ;

    return-object v0
.end method
