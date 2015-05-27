.class final Lo/ih$if;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lo/gk<Ljava/util/Map<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final LE:Lo/ho;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ho<+Ljava/util/Map<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final LM:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TK;>;"
        }
    .end annotation
.end field

.field private final LN:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TV;>;"
        }
    .end annotation
.end field

.field final synthetic LO:Lo/ih;


# direct methods
.method public constructor <init>(Lo/ih;Lo/fl;Ljava/lang/reflect/Type;Lo/gk;Ljava/lang/reflect/Type;Lo/gk;Lo/ho;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Ljava/lang/reflect/Type;Lo/gk<TK;>;Ljava/lang/reflect/Type;Lo/gk<TV;>;Lo/ho<+Ljava/util/Map<TK;TV;>;>;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lo/ih$if;->LO:Lo/ih;

    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 153
    new-instance v0, Lo/iq;

    invoke-direct {v0, p2, p4, p3}, Lo/iq;-><init>(Lo/fl;Lo/gk;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo/ih$if;->LM:Lo/gk;

    .line 155
    new-instance v0, Lo/iq;

    invoke-direct {v0, p2, p6, p5}, Lo/iq;-><init>(Lo/fl;Lo/gk;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo/ih$if;->LN:Lo/gk;

    .line 157
    iput-object p7, p0, Lo/ih$if;->LE:Lo/ho;

    .line 158
    return-void
.end method

.method private ᐝ(Lo/fw;)Ljava/lang/String;
    .locals 2

    .line 246
    invoke-virtual {p1}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p1}, Lo/fw;->t()Lo/gc;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lo/gc;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v1}, Lo/gc;->g()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {v1}, Lo/gc;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v1}, Lo/gc;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_1
    invoke-virtual {v1}, Lo/gc;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v1}, Lo/gc;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 257
    :cond_3
    invoke-virtual {p1}, Lo/fw;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const-string v0, "null"

    return-object v0

    .line 260
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 145
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lo/ih$if;->ˊ(Lo/kc;Ljava/util/Map;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;Ljava/util/Map<TK;TV;>;)V"
        }
    .end annotation

    .line 199
    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 201
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lo/ih$if;->LO:Lo/ih;

    invoke-static {v0}, Lo/ih;->ˊ(Lo/ih;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1}, Lo/kc;->R()Lo/kc;

    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 207
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 208
    iget-object v0, p0, Lo/ih$if;->LN:Lo/gk;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Lo/kc;->S()Lo/kc;

    .line 211
    return-void

    .line 214
    :cond_2
    const/4 v2, 0x0

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v6, v0

    .line 219
    iget-object v0, p0, Lo/ih$if;->LM:Lo/gk;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/gk;->ᴶ(Ljava/lang/Object;)Lo/fw;

    move-result-object v7

    .line 220
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v7}, Lo/fw;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lo/fw;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    or-int/2addr v2, v0

    .line 223
    goto :goto_1

    .line 225
    :cond_5
    if-eqz v2, :cond_7

    .line 226
    invoke-virtual {p1}, Lo/kc;->P()Lo/kc;

    .line 227
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 228
    invoke-virtual {p1}, Lo/kc;->P()Lo/kc;

    .line 229
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-static {v0, p1}, Lo/hq;->ˋ(Lo/fw;Lo/kc;)V

    .line 230
    iget-object v0, p0, Lo/ih$if;->LN:Lo/gk;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lo/kc;->Q()Lo/kc;

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 233
    :cond_6
    invoke-virtual {p1}, Lo/kc;->Q()Lo/kc;

    goto :goto_5

    .line 235
    :cond_7
    invoke-virtual {p1}, Lo/kc;->R()Lo/kc;

    .line 236
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 237
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    move-object v6, v0

    .line 238
    invoke-direct {p0, v6}, Lo/ih$if;->ᐝ(Lo/fw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 239
    iget-object v0, p0, Lo/ih$if;->LN:Lo/gk;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 241
    :cond_8
    invoke-virtual {p1}, Lo/kc;->S()Lo/kc;

    .line 243
    :goto_5
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 145
    invoke-virtual {p0, p1}, Lo/ih$if;->ͺ(Lo/jz;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public ͺ(Lo/jz;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)Ljava/util/Map<TK;TV;>;"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v3

    .line 162
    sget-object v0, Lo/kb;->NB:Lo/kb;

    if-ne v3, v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lo/ih$if;->LE:Lo/ho;

    invoke-interface {v0}, Lo/ho;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 169
    sget-object v0, Lo/kb;->Nt:Lo/kb;

    if-ne v3, v0, :cond_3

    .line 170
    invoke-virtual {p1}, Lo/jz;->beginArray()V

    .line 171
    :goto_0
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1}, Lo/jz;->beginArray()V

    .line 173
    iget-object v0, p0, Lo/ih$if;->LM:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    iget-object v0, p0, Lo/ih$if;->LN:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v6

    .line 175
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 176
    if-eqz v7, :cond_1

    .line 177
    new-instance v0, Lo/gf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lo/jz;->endArray()V

    .line 180
    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Lo/jz;->endArray()V

    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1}, Lo/jz;->beginObject()V

    .line 184
    :goto_1
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    sget-object v0, Lo/hi;->Lb:Lo/hi;

    invoke-virtual {v0, p1}, Lo/hi;->ʻ(Lo/jz;)V

    .line 186
    iget-object v0, p0, Lo/ih$if;->LM:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v5

    .line 187
    iget-object v0, p0, Lo/ih$if;->LN:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v6

    .line 188
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 189
    if-eqz v7, :cond_4

    .line 190
    new-instance v0, Lo/gf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_4
    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual {p1}, Lo/jz;->endObject()V

    .line 195
    :goto_2
    return-object v4
.end method
