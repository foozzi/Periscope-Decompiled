.class public final Lo/ik$if;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/gk<TT;>;"
    }
.end annotation


# instance fields
.field private final LE:Lo/ho;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ho<TT;>;"
        }
    .end annotation
.end field

.field private final LW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Lo/ik$\u02ca;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/ho;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/ho<TT;>;Ljava/util/Map<Ljava/lang/String;Lo/ik$\u02ca;>;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 176
    iput-object p1, p0, Lo/ik$if;->LE:Lo/ho;

    .line 177
    iput-object p2, p0, Lo/ik$if;->LW:Ljava/util/Map;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lo/ho;Ljava/util/Map;Lo/il;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lo/ik$if;-><init>(Lo/ho;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation

    .line 209
    if-nez p2, :cond_0

    .line 210
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 211
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Lo/kc;->R()Lo/kc;

    .line 216
    :try_start_0
    iget-object v0, p0, Lo/ik$if;->LW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ik$ˊ;

    move-object v2, v0

    .line 217
    invoke-virtual {v2, p2}, Lo/ik$ˊ;->ı(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, v2, Lo/ik$ˊ;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 219
    invoke-virtual {v2, p1, p2}, Lo/ik$ˊ;->ˊ(Lo/kc;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 224
    :cond_2
    goto :goto_1

    .line 222
    :catch_0
    move-exception v1

    .line 223
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :goto_1
    invoke-virtual {p1}, Lo/kc;->S()Lo/kc;

    .line 226
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lo/ik$if;->LE:Lo/ho;

    invoke-interface {v0}, Lo/ho;->C()Ljava/lang/Object;

    move-result-object v2

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lo/jz;->beginObject()V

    .line 190
    :goto_0
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p1}, Lo/jz;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 192
    iget-object v0, p0, Lo/ik$if;->LW:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ik$ˊ;

    move-object v4, v0

    .line 193
    if-eqz v4, :cond_1

    iget-boolean v0, v4, Lo/ik$ˊ;->LY:Z

    if-nez v0, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p1}, Lo/jz;->skipValue()V

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v4, p1, v2}, Lo/ik$ˊ;->ˊ(Lo/jz;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :goto_1
    goto :goto_0

    .line 203
    :cond_3
    goto :goto_2

    .line 199
    :catch_0
    move-exception v3

    .line 200
    new-instance v0, Lo/gf;

    invoke-direct {v0, v3}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 201
    :catch_1
    move-exception v3

    .line 202
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 204
    :goto_2
    invoke-virtual {p1}, Lo/jz;->endObject()V

    .line 205
    return-object v2
.end method
