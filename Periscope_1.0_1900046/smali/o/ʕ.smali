.class Lo/ʕ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ʕ$ˊ;,
        Lo/ʕ$if;,
        Lo/ʕ$ˋ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final hc:Lo/ʕ$ˊ;


# instance fields
.field private final em:Lo/ᔿ;

.field private final er:Lo/ʖ;

.field private final es:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<TT;>;"
        }
    .end annotation
.end field

.field private volatile hb:Z

.field private final hd:Lo/τ;

.field private final he:Lo/Į;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u012e<TA;>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final hf:Lo/ᓹ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14f9<TA;TT;>;"
        }
    .end annotation
.end field

.field private final hg:Lo/ғ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0493<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final hh:Lo/ʕ$if;

.field private final hi:Lo/ʕ$ˊ;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/ʕ$ˊ;

    invoke-direct {v0}, Lo/ʕ$ˊ;-><init>()V

    sput-object v0, Lo/ʕ;->hc:Lo/ʕ$ˊ;

    return-void
.end method

.method public constructor <init>(Lo/τ;IILo/Į;Lo/ᓹ;Lo/ﺭ;Lo/ғ;Lo/ʕ$if;Lo/ʖ;Lo/ᔿ;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u03c4;IILo/\u012e<TA;>;Lo/\u14f9<TA;TT;>;Lo/\ufead<TT;>;Lo/\u0493<TT;TZ;>;Lo/\u0295$if;Lo/\u0296;Lo/\u153f;)V"
        }
    .end annotation

    .line 51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    sget-object v11, Lo/ʕ;->hc:Lo/ʕ$ˊ;

    invoke-direct/range {v0 .. v11}, Lo/ʕ;-><init>(Lo/τ;IILo/Į;Lo/ᓹ;Lo/ﺭ;Lo/ғ;Lo/ʕ$if;Lo/ʖ;Lo/ᔿ;Lo/ʕ$ˊ;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lo/τ;IILo/Į;Lo/ᓹ;Lo/ﺭ;Lo/ғ;Lo/ʕ$if;Lo/ʖ;Lo/ᔿ;Lo/ʕ$ˊ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u03c4;IILo/\u012e<TA;>;Lo/\u14f9<TA;TT;>;Lo/\ufead<TT;>;Lo/\u0493<TT;TZ;>;Lo/\u0295$if;Lo/\u0296;Lo/\u153f;Lo/\u0295$\u02ca;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lo/ʕ;->hd:Lo/τ;

    .line 61
    iput p2, p0, Lo/ʕ;->width:I

    .line 62
    iput p3, p0, Lo/ʕ;->height:I

    .line 63
    iput-object p4, p0, Lo/ʕ;->he:Lo/Į;

    .line 64
    iput-object p5, p0, Lo/ʕ;->hf:Lo/ᓹ;

    .line 65
    iput-object p6, p0, Lo/ʕ;->es:Lo/ﺭ;

    .line 66
    iput-object p7, p0, Lo/ʕ;->hg:Lo/ғ;

    .line 67
    iput-object p8, p0, Lo/ʕ;->hh:Lo/ʕ$if;

    .line 68
    iput-object p9, p0, Lo/ʕ;->er:Lo/ʖ;

    .line 69
    iput-object p10, p0, Lo/ʕ;->em:Lo/ᔿ;

    .line 70
    iput-object p11, p0, Lo/ʕ;->hi:Lo/ʕ$ˊ;

    .line 71
    return-void
.end method

.method static synthetic ˊ(Lo/ʕ;)Lo/ʕ$ˊ;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/ʕ;->hi:Lo/ʕ$ˊ;

    return-object v0
.end method

.method private ˊ(Lo/ڔ;)Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TT;>;)Lo/\u0694<TZ;>;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 139
    invoke-direct {p0, p1}, Lo/ʕ;->ˎ(Lo/ڔ;)Lo/ڔ;

    move-result-object v4

    .line 140
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "Transformed resource from source"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 144
    :cond_0
    invoke-direct {p0, v4}, Lo/ʕ;->ˋ(Lo/ڔ;)V

    .line 146
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 147
    invoke-direct {p0, v4}, Lo/ʕ;->ˏ(Lo/ڔ;)Lo/ڔ;

    move-result-object v5

    .line 148
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "Transcoded transformed from source"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 151
    :cond_1
    return-object v5
.end method

.method private ˋ(Ljava/lang/String;J)V
    .locals 4

    .line 251
    const-string v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lo/ｯ;->ˎ(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ʕ;->hd:Lo/τ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private ˋ(Lo/ڔ;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TT;>;)V"
        }
    .end annotation

    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ʕ;->er:Lo/ʖ;

    invoke-virtual {v0}, Lo/ʖ;->ܕ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 159
    new-instance v4, Lo/ʕ$ˋ;

    iget-object v0, p0, Lo/ʕ;->hf:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ｪ()Lo/ﺪ;

    move-result-object v0

    invoke-direct {v4, p0, v0, p1}, Lo/ʕ$ˋ;-><init>(Lo/ʕ;Lo/ﭥ;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lo/ʕ;->hh:Lo/ʕ$if;

    invoke-interface {v0}, Lo/ʕ$if;->ڗ()Lo/ᓳ;

    move-result-object v0

    iget-object v1, p0, Lo/ʕ;->hd:Lo/τ;

    invoke-interface {v0, v1, v4}, Lo/ᓳ;->ˊ(Lo/ﮆ;Lo/ᓳ$ˊ;)V

    .line 161
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "Wrote transformed from source to cache"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 164
    :cond_2
    return-void
.end method

.method private ˎ(Lo/ڔ;)Lo/ڔ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TT;>;)Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lo/ʕ;->es:Lo/ﺭ;

    iget v1, p0, Lo/ʕ;->width:I

    iget v2, p0, Lo/ʕ;->height:I

    invoke-interface {v0, p1, v1, v2}, Lo/ﺭ;->ˊ(Lo/ڔ;II)Lo/ڔ;

    move-result-object v3

    .line 237
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-interface {p1}, Lo/ڔ;->recycle()V

    .line 240
    :cond_1
    return-object v3
.end method

.method private ˎ(Lo/ﮆ;)Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;)Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lo/ʕ;->hh:Lo/ʕ$if;

    invoke-interface {v0}, Lo/ʕ$if;->ڗ()Lo/ᓳ;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ᓳ;->ᐝ(Lo/ﮆ;)Ljava/io/File;

    move-result-object v3

    .line 216
    if-nez v3, :cond_0

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    const/4 v4, 0x0

    .line 222
    :try_start_0
    iget-object v0, p0, Lo/ʕ;->hf:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ﻩ()Lo/ﺀ;

    move-result-object v0

    iget v1, p0, Lo/ʕ;->width:I

    iget v2, p0, Lo/ʕ;->height:I

    invoke-interface {v0, v3, v1, v2}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v4, v0

    .line 224
    if-nez v4, :cond_2

    .line 225
    iget-object v0, p0, Lo/ʕ;->hh:Lo/ʕ$if;

    invoke-interface {v0}, Lo/ʕ$if;->ڗ()Lo/ᓳ;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ᓳ;->ʻ(Lo/ﮆ;)V

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v5

    if-nez v4, :cond_1

    .line 225
    iget-object v0, p0, Lo/ʕ;->hh:Lo/ʕ$if;

    invoke-interface {v0}, Lo/ʕ$if;->ڗ()Lo/ᓳ;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ᓳ;->ʻ(Lo/ﮆ;)V

    :cond_1
    throw v5

    .line 228
    :cond_2
    :goto_0
    return-object v4
.end method

.method private ˏ(Lo/ڔ;)Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TT;>;)Lo/\u0694<TZ;>;"
        }
    .end annotation

    .line 244
    if-nez p1, :cond_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lo/ʕ;->hg:Lo/ғ;

    invoke-interface {v0, p1}, Lo/ғ;->ˏ(Lo/ڔ;)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method

.method private ږ()Lo/ڔ;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 167
    const/4 v2, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v3

    .line 170
    iget-object v0, p0, Lo/ʕ;->he:Lo/Į;

    iget-object v1, p0, Lo/ʕ;->em:Lo/ᔿ;

    invoke-interface {v0, v1}, Lo/Į;->ˊ(Lo/ᔿ;)Ljava/lang/Object;

    move-result-object v5

    .line 171
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Fetched data"

    invoke-direct {p0, v0, v3, v4}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 174
    :cond_0
    iget-boolean v0, p0, Lo/ʕ;->hb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 175
    const/4 v6, 0x0

    .line 179
    iget-object v0, p0, Lo/ʕ;->he:Lo/Į;

    invoke-interface {v0}, Lo/Į;->ב()V

    return-object v6

    .line 177
    :cond_1
    :try_start_1
    invoke-direct {p0, v5}, Lo/ʕ;->ۥ(Ljava/lang/Object;)Lo/ڔ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 179
    iget-object v0, p0, Lo/ʕ;->he:Lo/Į;

    invoke-interface {v0}, Lo/Į;->ב()V

    .line 180
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v7

    iget-object v0, p0, Lo/ʕ;->he:Lo/Į;

    invoke-interface {v0}, Lo/Į;->ב()V

    throw v7

    .line 181
    :goto_0
    return-object v2
.end method

.method private ۥ(Ljava/lang/Object;)Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lo/ʕ;->er:Lo/ʖ;

    invoke-virtual {v0}, Lo/ʖ;->ە()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lo/ʕ;->ᐠ(Ljava/lang/Object;)Lo/ڔ;

    move-result-object v3

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v4

    .line 190
    iget-object v0, p0, Lo/ʕ;->hf:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v0

    iget v1, p0, Lo/ʕ;->width:I

    iget v2, p0, Lo/ʕ;->height:I

    invoke-interface {v0, p1, v1, v2}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;

    move-result-object v3

    .line 191
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "Decoded from source"

    invoke-direct {p0, v0, v4, v5}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 195
    :cond_1
    :goto_0
    return-object v3
.end method

.method private ᐠ(Ljava/lang/Object;)Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 199
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 200
    new-instance v4, Lo/ʕ$ˋ;

    iget-object v0, p0, Lo/ʕ;->hf:Lo/ᓹ;

    invoke-interface {v0}, Lo/ᓹ;->ｩ()Lo/ﭥ;

    move-result-object v0

    invoke-direct {v4, p0, v0, p1}, Lo/ʕ$ˋ;-><init>(Lo/ʕ;Lo/ﭥ;Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lo/ʕ;->hh:Lo/ʕ$if;

    invoke-interface {v0}, Lo/ʕ$if;->ڗ()Lo/ᓳ;

    move-result-object v0

    iget-object v1, p0, Lo/ʕ;->hd:Lo/τ;

    invoke-virtual {v1}, Lo/τ;->ๆ()Lo/ﮆ;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lo/ᓳ;->ˊ(Lo/ﮆ;Lo/ᓳ$ˊ;)V

    .line 202
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "Wrote source to cache"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 206
    :cond_0
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 207
    iget-object v0, p0, Lo/ʕ;->hd:Lo/τ;

    invoke-virtual {v0}, Lo/τ;->ๆ()Lo/ﮆ;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ʕ;->ˎ(Lo/ﮆ;)Lo/ڔ;

    move-result-object v5

    .line 208
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 209
    const-string v0, "Decoded source from cache"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 211
    :cond_1
    return-object v5
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʕ;->hb:Z

    .line 134
    iget-object v0, p0, Lo/ʕ;->he:Lo/Į;

    invoke-interface {v0}, Lo/Į;->cancel()V

    .line 135
    return-void
.end method

.method public װ()Lo/ڔ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<TZ;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lo/ʕ;->er:Lo/ʖ;

    invoke-virtual {v0}, Lo/ʖ;->ܕ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 85
    iget-object v0, p0, Lo/ʕ;->hd:Lo/τ;

    invoke-direct {p0, v0}, Lo/ʕ;->ˎ(Lo/ﮆ;)Lo/ڔ;

    move-result-object v4

    .line 86
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "Decoded transformed from cache"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 89
    :cond_1
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 90
    invoke-direct {p0, v4}, Lo/ʕ;->ˏ(Lo/ڔ;)Lo/ڔ;

    move-result-object v5

    .line 91
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "Transcoded transformed from cache"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 94
    :cond_2
    return-object v5
.end method

.method public ه()Lo/ڔ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<TZ;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lo/ʕ;->er:Lo/ʖ;

    invoke-virtual {v0}, Lo/ʖ;->ە()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v2

    .line 109
    iget-object v0, p0, Lo/ʕ;->hd:Lo/τ;

    invoke-virtual {v0}, Lo/τ;->ๆ()Lo/ﮆ;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ʕ;->ˎ(Lo/ﮆ;)Lo/ڔ;

    move-result-object v4

    .line 110
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "Decoded source from cache"

    invoke-direct {p0, v0, v2, v3}, Lo/ʕ;->ˋ(Ljava/lang/String;J)V

    .line 113
    :cond_1
    invoke-direct {p0, v4}, Lo/ʕ;->ˊ(Lo/ڔ;)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method

.method public ډ()Lo/ڔ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<TZ;>;"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lo/ʕ;->ږ()Lo/ڔ;

    move-result-object v1

    .line 129
    invoke-direct {p0, v1}, Lo/ʕ;->ˊ(Lo/ڔ;)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
