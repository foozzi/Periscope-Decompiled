.class Lo/丨;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/丨$if;
    }
.end annotation


# instance fields
.field final C:Lo/丨$if;


# direct methods
.method public constructor <init>(Lo/丨$if;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/丨;->C:Lo/丨$if;

    .line 33
    return-void
.end method

.method private ʻ(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;)I"
        }
    .end annotation

    .line 217
    const/4 v2, 0x0

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 219
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 220
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 221
    if-eqz v2, :cond_1

    .line 222
    return v3

    .line 225
    :cond_0
    const/4 v2, 0x1

    .line 218
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 228
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private ˊ(Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;II)V"
        }
    .end annotation

    .line 45
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v6, v0

    .line 46
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v7, v0

    .line 47
    iget v0, v7, Lo/ᴗ$ˊ;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v6

    move v4, p3

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lo/丨;->ˊ(Ljava/util/List;ILo/ᴗ$ˊ;ILo/ᴗ$ˊ;)V

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v6

    move v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lo/丨;->ˋ(Ljava/util/List;ILo/ᴗ$ˊ;ILo/ᴗ$ˊ;)V

    .line 53
    goto :goto_0

    .line 55
    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v6

    move v4, p3

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lo/丨;->ˎ(Ljava/util/List;ILo/ᴗ$ˊ;ILo/ᴗ$ˊ;)V

    .line 58
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private ˋ(Ljava/util/List;ILo/ᴗ$ˊ;ILo/ᴗ$ˊ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;ILo/\u1d17$\u02ca;ILo/\u1d17$\u02ca;)V"
        }
    .end annotation

    .line 161
    const/4 v2, 0x0

    .line 163
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge v0, v1, :cond_0

    .line 164
    add-int/lit8 v2, v2, -0x1

    .line 166
    :cond_0
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge v0, v1, :cond_1

    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 169
    :cond_1
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, v1, :cond_2

    .line 170
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    .line 172
    :cond_2
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p3, Lo/ᴗ$ˊ;->ӟ:I

    if-gt v0, v1, :cond_3

    .line 173
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    .line 175
    :cond_3
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/2addr v0, v2

    iput v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    .line 176
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method


# virtual methods
.method ˊ(Ljava/util/List;ILo/ᴗ$ˊ;ILo/ᴗ$ˊ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;ILo/\u1d17$\u02ca;ILo/\u1d17$\u02ca;)V"
        }
    .end annotation

    .line 62
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 67
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p3, Lo/ᴗ$ˊ;->ӟ:I

    if-ge v0, v1, :cond_0

    .line 68
    const/4 v5, 0x0

    .line 69
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    if-ne v0, v1, :cond_1

    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v2, p3, Lo/ᴗ$ˊ;->Ҭ:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 71
    const/4 v4, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v5, 0x1

    .line 75
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p3, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p3, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 77
    const/4 v4, 0x1

    .line 82
    :cond_1
    :goto_0
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge v0, v1, :cond_2

    .line 83
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    goto :goto_1

    .line 84
    :cond_2
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 86
    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    .line 87
    const/4 v0, 0x1

    iput v0, p3, Lo/ᴗ$ˊ;->ʳ:I

    .line 88
    const/4 v0, 0x1

    iput v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    .line 89
    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    if-nez v0, :cond_3

    .line 90
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lo/丨;->C:Lo/丨$if;

    invoke-interface {v0, p5}, Lo/丨$if;->ʼ(Lo/ᴗ$ˊ;)V

    .line 94
    :cond_3
    return-void

    .line 98
    :cond_4
    :goto_1
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, v1, :cond_5

    .line 99
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    goto :goto_2

    .line 100
    :cond_5
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    .line 101
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v0, v1

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    sub-int v6, v0, v1

    .line 103
    iget-object v0, p0, Lo/丨;->C:Lo/丨$if;

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, v6}, Lo/丨$if;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v3

    .line 104
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    sub-int/2addr v0, v1

    iput v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    .line 108
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 109
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lo/丨;->C:Lo/丨$if;

    invoke-interface {v0, p3}, Lo/丨$if;->ʼ(Lo/ᴗ$ˊ;)V

    .line 112
    return-void

    .line 116
    :cond_7
    if-eqz v5, :cond_b

    .line 117
    if-eqz v3, :cond_9

    .line 118
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v3, Lo/ᴗ$ˊ;->Ҭ:I

    if-le v0, v1, :cond_8

    .line 119
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v3, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    .line 121
    :cond_8
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v3, Lo/ᴗ$ˊ;->Ҭ:I

    if-le v0, v1, :cond_9

    .line 122
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v3, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    .line 125
    :cond_9
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-le v0, v1, :cond_a

    .line 126
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    .line 128
    :cond_a
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-le v0, v1, :cond_f

    .line 129
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    goto :goto_3

    .line 132
    :cond_b
    if-eqz v3, :cond_d

    .line 133
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v3, Lo/ᴗ$ˊ;->Ҭ:I

    if-lt v0, v1, :cond_c

    .line 134
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v3, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    .line 136
    :cond_c
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v3, Lo/ᴗ$ˊ;->Ҭ:I

    if-lt v0, v1, :cond_d

    .line 137
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v3, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    .line 140
    :cond_d
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-lt v0, v1, :cond_e

    .line 141
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    .line 143
    :cond_e
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-lt v0, v1, :cond_f

    .line 144
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v1

    iput v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    .line 148
    :cond_f
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p3, Lo/ᴗ$ˊ;->ӟ:I

    if-eq v0, v1, :cond_10

    .line 150
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 152
    :cond_10
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    :goto_4
    if-eqz v3, :cond_11

    .line 155
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    :cond_11
    return-void
.end method

.method ˎ(Ljava/util/List;ILo/ᴗ$ˊ;ILo/ᴗ$ˊ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;ILo/\u1d17$\u02ca;ILo/\u1d17$\u02ca;)V"
        }
    .end annotation

    .line 182
    const/4 v4, 0x0

    .line 183
    const/4 v5, 0x0

    .line 185
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge v0, v1, :cond_0

    .line 186
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    goto :goto_0

    .line 187
    :cond_0
    iget v0, p3, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 189
    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    .line 190
    iget-object v0, p0, Lo/丨;->C:Lo/丨$if;

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lo/丨$if;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v4

    .line 193
    :cond_1
    :goto_0
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, v1, :cond_2

    .line 194
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    goto :goto_1

    .line 195
    :cond_2
    iget v0, p3, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 196
    iget v0, p5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p5, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v0, v1

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    sub-int v6, v0, v1

    .line 198
    iget-object v0, p0, Lo/丨;->C:Lo/丨$if;

    iget v1, p3, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1, v6}, Lo/丨$if;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v5

    .line 199
    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr v0, v6

    iput v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    .line 201
    :cond_3
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget v0, p5, Lo/ᴗ$ˊ;->ӟ:I

    if-lez v0, :cond_4

    .line 203
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 205
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lo/丨;->C:Lo/丨$if;

    invoke-interface {v0, p5}, Lo/丨$if;->ʼ(Lo/ᴗ$ˊ;)V

    .line 208
    :goto_2
    if-eqz v4, :cond_5

    .line 209
    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    :cond_5
    if-eqz v5, :cond_6

    .line 212
    invoke-interface {p1, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    :cond_6
    return-void
.end method

.method ᐝ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;)V"
        }
    .end annotation

    .line 39
    :goto_0
    invoke-direct {p0, p1}, Lo/丨;->ʻ(Ljava/util/List;)I

    move-result v0

    move v2, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 40
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, p1, v2, v0}, Lo/丨;->ˊ(Ljava/util/List;II)V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method
