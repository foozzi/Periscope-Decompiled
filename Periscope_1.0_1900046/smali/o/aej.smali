.class public Lo/aej;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/zz<Lo/aeh;>;"
    }
.end annotation


# instance fields
.field private bAA:Lo/aeh$aux;

.field private bAB:Lo/zz$if;

.field private final bAy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/aeh;>;"
        }
    .end annotation
.end field

.field private final bAz:Z

.field private final bnA:Lo/aad;

.field private final bnB:Lo/zp;

.field private final bwV:Ljava/lang/String;

.field private final bzc:Lo/ady;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/aad;Lo/zp;Lo/ady;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/aej;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lo/aej;->bnB:Lo/zp;

    .line 43
    iput-object p4, p0, Lo/aej;->bzc:Lo/ady;

    .line 44
    iput-object p2, p0, Lo/aej;->bnA:Lo/aad;

    .line 45
    iput-object p5, p0, Lo/aej;->bwV:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    .line 47
    invoke-static {p1}, Lo/abb;->ﾟ(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/aej;->bAz:Z

    .line 48
    return-void
.end method

.method private xM()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lo/aej;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aad;->一(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private xN()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lo/aej;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aad;->גּ(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private ゝ(Ljava/lang/String;)Lo/anf;
    .locals 1

    .line 231
    iget-object v0, p0, Lo/aej;->bnB:Lo/zp;

    invoke-virtual {v0, p1}, Lo/zp;->ゝ(Ljava/lang/String;)Lo/anf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "viewer_provider"

    return-object v0
.end method

.method public tI()Lo/aad;
    .locals 1

    .line 219
    iget-object v0, p0, Lo/aej;->bnA:Lo/aad;

    return-object v0
.end method

.method public vc()I
    .locals 1

    .line 90
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public xK()Lo/xh;
    .locals 2

    .line 55
    iget-object v0, p0, Lo/aej;->bnB:Lo/zp;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zp;->ị(Ljava/lang/String;)Lo/xh;

    move-result-object v0

    return-object v0
.end method

.method public xL()V
    .locals 15

    .line 94
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    invoke-virtual {p0}, Lo/aej;->xK()Lo/xh;

    move-result-object v6

    .line 96
    if-nez v6, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lo/aej;->bAA:Lo/aeh$aux;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    iget-object v1, p0, Lo/aej;->bAA:Lo/aeh$aux;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    :cond_1
    iget-boolean v0, v6, Lo/xh;->boL:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/aej;->bAz:Z

    if-eqz v0, :cond_2

    iget-wide v0, v6, Lo/xh;->boO:D

    iget-wide v2, v6, Lo/xh;->boP:D

    invoke-static {v0, v1, v2, v3}, Lo/aba;->ˋ(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˎ;

    iget-wide v2, v6, Lo/xh;->boO:D

    iget-wide v4, v6, Lo/xh;->boP:D

    invoke-direct {v1, v2, v3, v4, v5}, Lo/aeh$ˎ;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˊ;

    invoke-direct {v1, p0}, Lo/aeh$ˊ;-><init>(Lo/aej;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v6, Lo/xh;->nD:Ljava/lang/String;

    iget-object v1, p0, Lo/aej;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v6}, Lo/xh;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lo/aej;->bAA:Lo/aeh$aux;

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Lo/agb;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/agb;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    iget-boolean v0, v6, Lo/xh;->boT:Z

    if-eqz v0, :cond_4

    .line 122
    new-instance v0, Lo/afz;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/afz;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_4
    new-instance v0, Lo/afw;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/afw;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_5
    new-instance v0, Lo/afy;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/afy;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$if;

    invoke-direct {v1, v7}, Lo/aeh$if;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_0

    .line 129
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-boolean v0, v6, Lo/xh;->boG:Z

    if-nez v0, :cond_7

    invoke-virtual {v6}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    new-instance v0, Lo/agc;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/agc;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_7
    new-instance v0, Lo/afy;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/afy;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lo/aga;

    iget-object v1, p0, Lo/aej;->bwV:Ljava/lang/String;

    iget-object v2, p0, Lo/aej;->bzc:Lo/ady;

    invoke-direct {v0, v1, v2}, Lo/aga;-><init>(Ljava/lang/String;Lo/ady;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$if;

    invoke-direct {v1, v7}, Lo/aeh$if;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    invoke-direct {p0}, Lo/aej;->xN()Ljava/util/Set;

    move-result-object v7

    .line 141
    invoke-direct {p0}, Lo/aej;->xM()Ljava/util/Set;

    move-result-object v8

    .line 142
    iget-object v0, p0, Lo/aej;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 143
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    :cond_9
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˋ;

    const v2, 0x7f0600a6

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/aeh$ˋ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 149
    :cond_a
    iget-object v0, v6, Lo/xh;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/aej;->ゝ(Ljava/lang/String;)Lo/anf;

    move-result-object v10

    .line 150
    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 153
    if-nez v10, :cond_b

    .line 154
    const/4 v11, 0x0

    goto :goto_1

    .line 156
    :cond_b
    invoke-virtual {v10}, Lo/anf;->BR()I

    move-result v11

    .line 159
    :goto_1
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˋ;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-long v3, v11

    const/4 v5, 0x1

    invoke-static {v9, v3, v4, v5}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0003

    invoke-virtual {v9, v3, v11, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/aeh$ˋ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v12, 0x0

    .line 164
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 165
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ʼ;

    iget-object v2, p0, Lo/aej;->bwV:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v14, v3}, Lo/aeh$ʼ;-><init>(Lo/aej;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v12, v12, 0x1

    .line 168
    const/16 v0, 0xf

    if-lt v12, v0, :cond_c

    .line 169
    goto :goto_3

    .line 171
    :cond_c
    goto :goto_2

    .line 172
    :cond_d
    :goto_3
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_e

    if-eqz v10, :cond_e

    .line 174
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˏ;

    sget-object v2, Lo/aeh$ˏ$if;->bAj:Lo/aeh$ˏ$if;

    const/16 v3, 0xf

    invoke-direct {v1, v10, v2, v3}, Lo/aeh$ˏ;-><init>(Lo/anf;Lo/aeh$ˏ$if;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_e
    goto :goto_4

    :cond_f
    invoke-virtual {v6}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, v6, Lo/xh;->boT:Z

    if-eqz v0, :cond_10

    .line 181
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˋ;

    const v2, 0x7f0600a5

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/aeh$ˋ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_10
    :goto_4
    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 188
    if-nez v10, :cond_11

    .line 189
    const/4 v11, 0x0

    goto :goto_5

    .line 191
    :cond_11
    invoke-virtual {v10}, Lo/anf;->BS()I

    move-result v0

    invoke-virtual {v10}, Lo/anf;->BQ()I

    move-result v1

    add-int v11, v0, v1

    .line 196
    :goto_5
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˋ;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-long v3, v11

    const/4 v5, 0x1

    invoke-static {v9, v3, v4, v5}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0002

    invoke-virtual {v9, v3, v11, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/aeh$ˋ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v12, 0x0

    .line 201
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 202
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ʼ;

    iget-object v2, p0, Lo/aej;->bwV:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v14, v3}, Lo/aeh$ʼ;-><init>(Lo/aej;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v12, v12, 0x1

    .line 205
    const/16 v0, 0xf

    if-lt v12, v0, :cond_12

    .line 206
    goto :goto_7

    .line 208
    :cond_12
    goto :goto_6

    .line 209
    :cond_13
    :goto_7
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_14

    if-eqz v10, :cond_14

    .line 211
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    new-instance v1, Lo/aeh$ˏ;

    sget-object v2, Lo/aeh$ˏ$if;->bAi:Lo/aeh$ˏ$if;

    const/16 v3, 0xf

    invoke-direct {v1, v10, v2, v3}, Lo/aeh$ˏ;-><init>(Lo/anf;Lo/aeh$ˏ$if;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_14
    :goto_8
    return-void
.end method

.method public ǰ(I)Lo/aeh;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeh;

    return-object v0
.end method

.method public ˊ(Lo/aal;)V
    .locals 6

    .line 75
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeh;

    move-object v4, v0

    .line 77
    instance-of v0, v4, Lo/aeh$ʼ;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, v4

    check-cast v0, Lo/aeh$ʼ;

    move-object v5, v0

    .line 79
    iget-object v0, p1, Lo/aal;->nD:Ljava/lang/String;

    iget-object v1, v5, Lo/aeh$ʼ;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lo/aal;->bug:Z

    iget-boolean v1, v5, Lo/aeh$ʼ;->bug:Z

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lo/aej;->bAB:Lo/zz$if;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lo/zz$if;->יּ(II)V

    .line 81
    goto :goto_1

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    return-void
.end method

.method public ˊ(Lo/zz$if;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lo/aej;->bAB:Lo/zz$if;

    .line 237
    return-void
.end method

.method public ˋ(Lo/aeh$aux;)V
    .locals 3

    .line 59
    iput-object p1, p0, Lo/aej;->bAA:Lo/aeh$aux;

    .line 60
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/aeh$aux;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lo/aej;->bAy:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lo/aej;->bAB:Lo/zz$if;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lo/aej;->bAB:Lo/zz$if;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/zz$if;->ᐟ(II)V

    .line 67
    :cond_1
    return-void
.end method

.method public synthetic ﾅ(I)Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Lo/aej;->ǰ(I)Lo/aeh;

    move-result-object v0

    return-object v0
.end method
