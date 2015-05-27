.class public final Lo/fl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fl$if;
    }
.end annotation


# instance fields
.field private final JW:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<Ljava/util/Map<Lo/jy<*>;Lo/fl$if<*>;>;>;"
        }
    .end annotation
.end field

.field private final JX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/jy<*>;Lo/gk<*>;>;"
        }
    .end annotation
.end field

.field private final JY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/gl;>;"
        }
    .end annotation
.end field

.field private final JZ:Lo/gt;

.field private final Ka:Z

.field private final Kb:Z

.field private final Kc:Z

.field private final Kd:Z

.field final Ke:Lo/fu;

.field final Kf:Lo/gd;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 176
    move-object v0, p0

    sget-object v1, Lo/hg;->KP:Lo/hg;

    sget-object v2, Lo/fe;->JQ:Lo/fe;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v10, Lo/gg;->Ky:Lo/gg;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v11}, Lo/fl;-><init>(Lo/hg;Lo/fk;Ljava/util/Map;ZZZZZZLo/gg;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method constructor <init>(Lo/hg;Lo/fk;Ljava/util/Map;ZZZZZZLo/gg;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/hg;Lo/fk;Ljava/util/Map<Ljava/lang/reflect/Type;Lo/fs<*>;>;ZZZZZZLo/gg;Ljava/util/List<Lo/gl;>;)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lo/fl;->JW:Ljava/lang/ThreadLocal;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/fl;->JX:Ljava/util/Map;

    .line 125
    new-instance v0, Lo/fm;

    invoke-direct {v0, p0}, Lo/fm;-><init>(Lo/fl;)V

    iput-object v0, p0, Lo/fl;->Ke:Lo/fu;

    .line 132
    new-instance v0, Lo/fn;

    invoke-direct {v0, p0}, Lo/fn;-><init>(Lo/fl;)V

    iput-object v0, p0, Lo/fl;->Kf:Lo/gd;

    .line 188
    new-instance v0, Lo/gt;

    invoke-direct {v0, p3}, Lo/gt;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/fl;->JZ:Lo/gt;

    .line 189
    iput-boolean p4, p0, Lo/fl;->Ka:Z

    .line 190
    iput-boolean p6, p0, Lo/fl;->Kc:Z

    .line 191
    iput-boolean p7, p0, Lo/fl;->Kb:Z

    .line 192
    iput-boolean p8, p0, Lo/fl;->Kd:Z

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    sget-object v0, Lo/ir;->MS:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lo/ii;->LA:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v3, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    sget-object v0, Lo/ir;->Mz:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lo/ir;->Mo:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lo/ir;->Mi:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lo/ir;->Mk:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lo/ir;->Mm:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lo/fl;->ˊ(Lo/gg;)Lo/gk;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/ir;->ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/gk;)Lo/gl;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lo/fl;->ʸ(Z)Lo/gk;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/ir;->ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/gk;)Lo/gl;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lo/fl;->ˀ(Z)Lo/gk;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/ir;->ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/gk;)Lo/gl;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lo/ir;->Mt:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lo/ir;->Mv:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lo/ir;->MB:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lo/ir;->MD:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lo/ir;->Mx:Lo/gk;

    invoke-static {v0, v1}, Lo/ir;->ˊ(Ljava/lang/Class;Lo/gk;)Lo/gl;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lo/ir;->My:Lo/gk;

    invoke-static {v0, v1}, Lo/ir;->ˊ(Ljava/lang/Class;Lo/gk;)Lo/gl;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lo/ir;->MF:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lo/ir;->MH:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lo/ir;->ML:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lo/ir;->MQ:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lo/ir;->MJ:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lo/ir;->Mf:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lo/hz;->LA:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lo/ir;->MO:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lo/io;->LA:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lo/im;->LA:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lo/ir;->MM:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lo/hw;->LA:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lo/ir;->Md:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lo/hy;

    iget-object v1, p0, Lo/fl;->JZ:Lo/gt;

    invoke-direct {v0, v1}, Lo/hy;-><init>(Lo/gt;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lo/ih;

    iget-object v1, p0, Lo/fl;->JZ:Lo/gt;

    invoke-direct {v0, v1, p5}, Lo/ih;-><init>(Lo/gt;Z)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lo/ib;

    iget-object v1, p0, Lo/fl;->JZ:Lo/gt;

    invoke-direct {v0, v1}, Lo/ib;-><init>(Lo/gt;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lo/ir;->MT:Lo/gl;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lo/ik;

    iget-object v1, p0, Lo/fl;->JZ:Lo/gt;

    invoke-direct {v0, v1, p2, p1}, Lo/ik;-><init>(Lo/gt;Lo/fk;Lo/hg;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/fl;->JY:Ljava/util/List;

    .line 247
    return-void
.end method

.method private ʸ(Z)Lo/gk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Lo/gk<Ljava/lang/Number;>;"
        }
    .end annotation

    .line 250
    if-eqz p1, :cond_0

    .line 251
    sget-object v0, Lo/ir;->Mr:Lo/gk;

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Lo/fo;

    invoke-direct {v0, p0}, Lo/fo;-><init>(Lo/fl;)V

    return-object v0
.end method

.method private ˀ(Z)Lo/gk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Lo/gk<Ljava/lang/Number;>;"
        }
    .end annotation

    .line 274
    if-eqz p1, :cond_0

    .line 275
    sget-object v0, Lo/ir;->Mq:Lo/gk;

    return-object v0

    .line 277
    :cond_0
    new-instance v0, Lo/fp;

    invoke-direct {v0, p0}, Lo/fp;-><init>(Lo/fl;)V

    return-object v0
.end method

.method private ˊ(Lo/gg;)Lo/gk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/gg;)Lo/gk<Ljava/lang/Number;>;"
        }
    .end annotation

    .line 306
    sget-object v0, Lo/gg;->Ky:Lo/gg;

    if-ne p1, v0, :cond_0

    .line 307
    sget-object v0, Lo/ir;->Mp:Lo/gk;

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Lo/fq;

    invoke-direct {v0, p0}, Lo/fq;-><init>(Lo/fl;)V

    return-object v0
.end method

.method private ˊ(Ljava/io/Writer;)Lo/kc;
    .locals 2

    .line 645
    iget-boolean v0, p0, Lo/fl;->Kc:Z

    if-eqz v0, :cond_0

    .line 646
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    :cond_0
    new-instance v1, Lo/kc;

    invoke-direct {v1, p1}, Lo/kc;-><init>(Ljava/io/Writer;)V

    .line 649
    iget-boolean v0, p0, Lo/fl;->Kd:Z

    if-eqz v0, :cond_1

    .line 650
    const-string v0, "  "

    invoke-virtual {v1, v0}, Lo/kc;->setIndent(Ljava/lang/String;)V

    .line 652
    :cond_1
    iget-boolean v0, p0, Lo/fl;->Ka:Z

    invoke-virtual {v1, v0}, Lo/kc;->ι(Z)V

    .line 653
    return-object v1
.end method

.method private static ˊ(Ljava/lang/Object;Lo/jz;)V
    .locals 3

    .line 782
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NC:Lo/kb;

    if-eq v0, v1, :cond_0

    .line 783
    new-instance v0, Lo/fx;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lo/fx;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lo/kd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 789
    :cond_0
    goto :goto_0

    .line 785
    :catch_0
    move-exception v2

    .line 786
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 787
    :catch_1
    move-exception v2

    .line 788
    new-instance v0, Lo/fx;

    invoke-direct {v0, v2}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 790
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/fl;D)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lo/fl;->ˎ(D)V

    return-void
.end method

.method private ˎ(D)V
    .locals 3

    .line 298
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/fl;->Ka:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/fl;->JY:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/fl;->JZ:Lo/gt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;"
        }
    .end annotation

    .line 774
    new-instance v0, Lo/jz;

    invoke-direct {v0, p1}, Lo/jz;-><init>(Ljava/io/Reader;)V

    .line 775
    invoke-virtual {p0, v0, p2}, Lo/fl;->ˊ(Lo/jz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 776
    invoke-static {v1, v0}, Lo/fl;->ˊ(Ljava/lang/Object;Lo/jz;)V

    .line 777
    return-object v1
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;"
        }
    .end annotation

    .line 696
    invoke-virtual {p0, p1, p2}, Lo/fl;->ˊ(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 697
    invoke-static {p2}, Lo/hp;->ι(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;"
        }
    .end annotation

    .line 720
    if-nez p1, :cond_0

    .line 721
    const/4 v0, 0x0

    return-object v0

    .line 723
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, v1, p2}, Lo/fl;->ˊ(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 725
    return-object v2
.end method

.method public ˊ(Lo/fw;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fw;Ljava/lang/Class<TT;>;)TT;"
        }
    .end annotation

    .line 848
    invoke-virtual {p0, p1, p2}, Lo/fl;->ˊ(Lo/fw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 849
    invoke-static {p2}, Lo/hp;->ι(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/fw;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fw;Ljava/lang/reflect/Type;)TT;"
        }
    .end annotation

    .line 872
    if-nez p1, :cond_0

    .line 873
    const/4 v0, 0x0

    return-object v0

    .line 875
    :cond_0
    new-instance v0, Lo/ic;

    invoke-direct {v0, p1}, Lo/ic;-><init>(Lo/fw;)V

    invoke-virtual {p0, v0, p2}, Lo/fl;->ˊ(Lo/jz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/jz;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/jz;Ljava/lang/reflect/Type;)TT;"
        }
    .end annotation

    .line 802
    const/4 v1, 0x1

    .line 803
    invoke-virtual {p1}, Lo/jz;->isLenient()Z

    move-result v2

    .line 804
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/jz;->setLenient(Z)V

    .line 806
    :try_start_0
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    .line 807
    const/4 v1, 0x0

    .line 808
    invoke-static {p2}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v3

    .line 809
    invoke-virtual {p0, v3}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v4

    .line 810
    invoke-virtual {v4, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 811
    move-object v6, v5

    .line 827
    invoke-virtual {p1, v2}, Lo/jz;->setLenient(Z)V

    return-object v6

    .line 812
    :catch_0
    move-exception v3

    .line 817
    if-eqz v1, :cond_0

    .line 818
    const/4 v4, 0x0

    .line 827
    invoke-virtual {p1, v2}, Lo/jz;->setLenient(Z)V

    return-object v4

    .line 820
    :cond_0
    :try_start_1
    new-instance v0, Lo/gf;

    invoke-direct {v0, v3}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 821
    :catch_1
    move-exception v3

    .line 822
    new-instance v0, Lo/gf;

    invoke-direct {v0, v3}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 823
    :catch_2
    move-exception v3

    .line 825
    new-instance v0, Lo/gf;

    invoke-direct {v0, v3}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :catchall_0
    move-exception v7

    invoke-virtual {p1, v2}, Lo/jz;->setLenient(Z)V

    throw v7
.end method

.method public ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lo/fw;
    .locals 2

    .line 492
    new-instance v1, Lo/ie;

    invoke-direct {v1}, Lo/ie;-><init>()V

    .line 493
    invoke-virtual {p0, p1, p2, v1}, Lo/fl;->ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/kc;)V

    .line 494
    invoke-virtual {v1}, Lo/ie;->N()Lo/fw;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/gl;Lo/jy;)Lo/gk;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/gl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 423
    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Lo/fl;->JY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 429
    :cond_0
    iget-object v0, p0, Lo/fl;->JY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gl;

    move-object v5, v0

    .line 430
    if-nez v3, :cond_2

    .line 431
    if-ne v5, p1, :cond_1

    .line 432
    const/4 v3, 0x1

    goto :goto_0

    .line 437
    :cond_2
    invoke-interface {v5, p0, p2}, Lo/gl;->ˊ(Lo/fl;Lo/jy;)Lo/gk;

    move-result-object v6

    .line 438
    if-eqz v6, :cond_3

    .line 439
    return-object v6

    .line 441
    :cond_3
    goto :goto_0

    .line 442
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lo/jy;)Lo/gk;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lo/fl;->JX:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gk;

    move-object v3, v0

    .line 336
    if-eqz v3, :cond_0

    .line 337
    return-object v3

    .line 340
    :cond_0
    iget-object v0, p0, Lo/fl;->JW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 341
    const/4 v5, 0x0

    .line 342
    if-nez v4, :cond_1

    .line 343
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 344
    iget-object v0, p0, Lo/fl;->JW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 345
    const/4 v5, 0x1

    .line 349
    :cond_1
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fl$if;

    move-object v6, v0

    .line 350
    if-eqz v6, :cond_2

    .line 351
    return-object v6

    .line 355
    :cond_2
    :try_start_0
    new-instance v7, Lo/fl$if;

    invoke-direct {v7}, Lo/fl$if;-><init>()V

    .line 356
    invoke-interface {v4, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lo/fl;->JY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gl;

    move-object v9, v0

    .line 359
    invoke-interface {v9, p0, p1}, Lo/gl;->ˊ(Lo/fl;Lo/jy;)Lo/gk;

    move-result-object v10

    .line 360
    if-eqz v10, :cond_4

    .line 361
    invoke-virtual {v7, v10}, Lo/fl$if;->ˊ(Lo/gk;)V

    .line 362
    iget-object v0, p0, Lo/fl;->JX:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    move-object v11, v10

    .line 368
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    if-eqz v5, :cond_3

    .line 371
    iget-object v0, p0, Lo/fl;->JW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    return-object v11

    .line 365
    :cond_4
    goto :goto_0

    .line 366
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :catchall_0
    move-exception v12

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    if-eqz v5, :cond_6

    .line 371
    iget-object v0, p0, Lo/fl;->JW:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v12
.end method

.method public ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2

    .line 578
    :try_start_0
    invoke-static {p3}, Lo/hq;->ˊ(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fl;->ˊ(Ljava/io/Writer;)Lo/kc;

    move-result-object v1

    .line 579
    invoke-virtual {p0, p1, p2, v1}, Lo/fl;->ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/kc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    .line 581
    new-instance v0, Lo/fx;

    invoke-direct {v0, v1}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 583
    :goto_0
    return-void
.end method

.method public ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/kc;)V
    .locals 7

    .line 592
    invoke-static {p2}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v1

    .line 593
    invoke-virtual {p3}, Lo/kc;->isLenient()Z

    move-result v2

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lo/kc;->setLenient(Z)V

    .line 595
    invoke-virtual {p3}, Lo/kc;->af()Z

    move-result v3

    .line 596
    iget-boolean v0, p0, Lo/fl;->Kb:Z

    invoke-virtual {p3, v0}, Lo/kc;->ˤ(Z)V

    .line 597
    invoke-virtual {p3}, Lo/kc;->ag()Z

    move-result v4

    .line 598
    iget-boolean v0, p0, Lo/fl;->Ka:Z

    invoke-virtual {p3, v0}, Lo/kc;->ι(Z)V

    .line 600
    :try_start_0
    invoke-virtual {v1, p3, p1}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {p3, v2}, Lo/kc;->setLenient(Z)V

    .line 605
    invoke-virtual {p3, v3}, Lo/kc;->ˤ(Z)V

    .line 606
    invoke-virtual {p3, v4}, Lo/kc;->ι(Z)V

    .line 607
    goto :goto_0

    .line 601
    :catch_0
    move-exception v5

    .line 602
    :try_start_1
    new-instance v0, Lo/fx;

    invoke-direct {v0, v5}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :catchall_0
    move-exception v6

    invoke-virtual {p3, v2}, Lo/kc;->setLenient(Z)V

    .line 605
    invoke-virtual {p3, v3}, Lo/kc;->ˤ(Z)V

    .line 606
    invoke-virtual {p3, v4}, Lo/kc;->ι(Z)V

    throw v6

    .line 608
    :goto_0
    return-void
.end method

.method public ˊ(Lo/fw;Ljava/lang/Appendable;)V
    .locals 2

    .line 633
    :try_start_0
    invoke-static {p2}, Lo/hq;->ˊ(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fl;->ˊ(Ljava/io/Writer;)Lo/kc;

    move-result-object v1

    .line 634
    invoke-virtual {p0, p1, v1}, Lo/fl;->ˊ(Lo/fw;Lo/kc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    goto :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 636
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 638
    :goto_0
    return-void
.end method

.method public ˊ(Lo/fw;Lo/kc;)V
    .locals 6

    .line 661
    invoke-virtual {p2}, Lo/kc;->isLenient()Z

    move-result v1

    .line 662
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/kc;->setLenient(Z)V

    .line 663
    invoke-virtual {p2}, Lo/kc;->af()Z

    move-result v2

    .line 664
    iget-boolean v0, p0, Lo/fl;->Kb:Z

    invoke-virtual {p2, v0}, Lo/kc;->ˤ(Z)V

    .line 665
    invoke-virtual {p2}, Lo/kc;->ag()Z

    move-result v3

    .line 666
    iget-boolean v0, p0, Lo/fl;->Ka:Z

    invoke-virtual {p2, v0}, Lo/kc;->ι(Z)V

    .line 668
    :try_start_0
    invoke-static {p1, p2}, Lo/hq;->ˋ(Lo/fw;Lo/kc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {p2, v1}, Lo/kc;->setLenient(Z)V

    .line 673
    invoke-virtual {p2, v2}, Lo/kc;->ˤ(Z)V

    .line 674
    invoke-virtual {p2, v3}, Lo/kc;->ι(Z)V

    .line 675
    goto :goto_0

    .line 669
    :catch_0
    move-exception v4

    .line 670
    :try_start_1
    new-instance v0, Lo/fx;

    invoke-direct {v0, v4}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    :catchall_0
    move-exception v5

    invoke-virtual {p2, v1}, Lo/kc;->setLenient(Z)V

    .line 673
    invoke-virtual {p2, v2}, Lo/kc;->ˤ(Z)V

    .line 674
    invoke-virtual {p2, v3}, Lo/kc;->ι(Z)V

    throw v5

    .line 676
    :goto_0
    return-void
.end method

.method public ˋ(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .line 533
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 534
    invoke-virtual {p0, p1, p2, v1}, Lo/fl;->ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 535
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lo/fw;)Ljava/lang/String;
    .locals 2

    .line 618
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 619
    invoke-virtual {p0, p1, v1}, Lo/fl;->ˊ(Lo/fw;Ljava/lang/Appendable;)V

    .line 620
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᐝ(Ljava/lang/Class;)Lo/gk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 452
    invoke-static {p1}, Lo/jy;->ˈ(Ljava/lang/Class;)Lo/jy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v0

    return-object v0
.end method

.method public ᴶ(Ljava/lang/Object;)Lo/fw;
    .locals 1

    .line 469
    if-nez p1, :cond_0

    .line 470
    sget-object v0, Lo/fy;->Ku:Lo/fy;

    return-object v0

    .line 472
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/fl;->ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lo/fw;

    move-result-object v0

    return-object v0
.end method

.method public ᴸ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 511
    if-nez p1, :cond_0

    .line 512
    sget-object v0, Lo/fy;->Ku:Lo/fy;

    invoke-virtual {p0, v0}, Lo/fl;->ˋ(Lo/fw;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/fl;->ˋ(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
