.class public final Lo/ic;
.super Lo/jz;
.source ""


# static fields
.field private static final LF:Ljava/io/Reader;

.field private static final LG:Ljava/lang/Object;


# instance fields
.field private final LH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/id;

    invoke-direct {v0}, Lo/id;-><init>()V

    sput-object v0, Lo/ic;->LF:Ljava/io/Reader;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ic;->LG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/fw;)V
    .locals 1

    .line 53
    sget-object v0, Lo/ic;->LF:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lo/jz;-><init>(Ljava/io/Reader;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method private K()Ljava/lang/Object;
    .locals 3

    .line 130
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    iget-object v1, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private L()Ljava/lang/Object;
    .locals 3

    .line 134
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    iget-object v1, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/kb;)V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public J()Lo/kb;
    .locals 6

    .line 87
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lo/kb;->NC:Lo/kb;

    return-object v0

    .line 91
    :cond_0
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v3

    .line 92
    instance-of v0, v3, Ljava/util/Iterator;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    iget-object v1, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lo/fz;

    .line 94
    move-object v0, v3

    check-cast v0, Ljava/util/Iterator;

    move-object v5, v0

    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    if-eqz v4, :cond_1

    .line 97
    sget-object v0, Lo/kb;->Nx:Lo/kb;

    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v0

    return-object v0

    .line 103
    :cond_2
    if-eqz v4, :cond_3

    sget-object v0, Lo/kb;->Nw:Lo/kb;

    goto :goto_0

    :cond_3
    sget-object v0, Lo/kb;->Nu:Lo/kb;

    :goto_0
    return-object v0

    .line 105
    :cond_4
    instance-of v0, v3, Lo/fz;

    if-eqz v0, :cond_5

    .line 106
    sget-object v0, Lo/kb;->Nv:Lo/kb;

    return-object v0

    .line 107
    :cond_5
    instance-of v0, v3, Lo/ft;

    if-eqz v0, :cond_6

    .line 108
    sget-object v0, Lo/kb;->Nt:Lo/kb;

    return-object v0

    .line 109
    :cond_6
    instance-of v0, v3, Lo/gc;

    if-eqz v0, :cond_a

    .line 110
    move-object v0, v3

    check-cast v0, Lo/gc;

    move-object v4, v0

    .line 111
    invoke-virtual {v4}, Lo/gc;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    sget-object v0, Lo/kb;->Ny:Lo/kb;

    return-object v0

    .line 113
    :cond_7
    invoke-virtual {v4}, Lo/gc;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    sget-object v0, Lo/kb;->NA:Lo/kb;

    return-object v0

    .line 115
    :cond_8
    invoke-virtual {v4}, Lo/gc;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    sget-object v0, Lo/kb;->Nz:Lo/kb;

    return-object v0

    .line 118
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_a
    instance-of v0, v3, Lo/fy;

    if-eqz v0, :cond_b

    .line 121
    sget-object v0, Lo/kb;->NB:Lo/kb;

    return-object v0

    .line 122
    :cond_b
    sget-object v0, Lo/ic;->LG:Ljava/lang/Object;

    if-ne v3, v0, :cond_c

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public M()V
    .locals 5

    .line 220
    sget-object v0, Lo/kb;->Nx:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 221
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    move-object v3, v0

    .line 222
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 223
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    new-instance v1, Lo/gc;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public beginArray()V
    .locals 3

    .line 58
    sget-object v0, Lo/kb;->Nt:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 59
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ft;

    move-object v2, v0

    .line 60
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-virtual {v2}, Lo/ft;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public beginObject()V
    .locals 3

    .line 70
    sget-object v0, Lo/kb;->Nv:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 71
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fz;

    move-object v2, v0

    .line 72
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-virtual {v2}, Lo/fz;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public close()V
    .locals 2

    .line 203
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    sget-object v1, Lo/ic;->LG:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public endArray()V
    .locals 1

    .line 64
    sget-object v0, Lo/kb;->Nu:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 65
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public endObject()V
    .locals 1

    .line 76
    sget-object v0, Lo/kb;->Nw:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 77
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v1

    .line 83
    sget-object v0, Lo/kb;->Nw:Lo/kb;

    if-eq v1, v0, :cond_0

    sget-object v0, Lo/kb;->Nu:Lo/kb;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBoolean()Z
    .locals 1

    .line 160
    sget-object v0, Lo/kb;->NA:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 161
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gc;

    invoke-virtual {v0}, Lo/gc;->m()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 6

    .line 170
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v3

    .line 171
    sget-object v0, Lo/kb;->Nz:Lo/kb;

    if-eq v3, v0, :cond_0

    sget-object v0, Lo/kb;->Ny:Lo/kb;

    if-eq v3, v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lo/kb;->Nz:Lo/kb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gc;

    invoke-virtual {v0}, Lo/gc;->i()D

    move-result-wide v4

    .line 175
    invoke-virtual {p0}, Lo/ic;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 179
    return-wide v4
.end method

.method public nextInt()I
    .locals 5

    .line 193
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v3

    .line 194
    sget-object v0, Lo/kb;->Nz:Lo/kb;

    if-eq v3, v0, :cond_0

    sget-object v0, Lo/kb;->Ny:Lo/kb;

    if-eq v3, v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lo/kb;->Nz:Lo/kb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gc;

    invoke-virtual {v0}, Lo/gc;->l()I

    move-result v4

    .line 198
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 199
    return v4
.end method

.method public nextLong()J
    .locals 6

    .line 183
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v3

    .line 184
    sget-object v0, Lo/kb;->Nz:Lo/kb;

    if-eq v3, v0, :cond_0

    sget-object v0, Lo/kb;->Ny:Lo/kb;

    if-eq v3, v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lo/kb;->Nz:Lo/kb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gc;

    invoke-virtual {v0}, Lo/gc;->k()J

    move-result-wide v4

    .line 188
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 189
    return-wide v4
.end method

.method public nextName()Ljava/lang/String;
    .locals 4

    .line 144
    sget-object v0, Lo/kb;->Nx:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 145
    invoke-direct {p0}, Lo/ic;->K()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    move-object v2, v0

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 147
    iget-object v0, p0, Lo/ic;->LH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextNull()V
    .locals 1

    .line 165
    sget-object v0, Lo/kb;->NB:Lo/kb;

    invoke-direct {p0, v0}, Lo/ic;->ˊ(Lo/kb;)V

    .line 166
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4

    .line 152
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v3

    .line 153
    sget-object v0, Lo/kb;->Ny:Lo/kb;

    if-eq v3, v0, :cond_0

    sget-object v0, Lo/kb;->Nz:Lo/kb;

    if-eq v3, v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lo/kb;->Ny:Lo/kb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gc;

    invoke-virtual {v0}, Lo/gc;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipValue()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lo/ic;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->Nx:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lo/ic;->nextName()Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lo/ic;->L()Ljava/lang/Object;

    .line 213
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
