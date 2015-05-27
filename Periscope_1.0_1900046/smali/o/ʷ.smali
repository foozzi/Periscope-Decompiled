.class public Lo/ʷ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Γ;
.implements Lo/ץ$if;
.implements Lo/ṟ$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ʷ$if;,
        Lo/ʷ$ˎ;,
        Lo/ʷ$ˏ;,
        Lo/ʷ$ˊ;,
        Lo/ʷ$ˋ;
    }
.end annotation


# instance fields
.field private final hs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\ufb86;Lo/\u0390;>;"
        }
    .end annotation
.end field

.field private final ht:Lo/ל;

.field private final hu:Lo/ṟ;

.field private final hv:Lo/ʷ$if;

.field private final hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\ufb86;Ljava/lang/ref/WeakReference<Lo/\u05e5<*>;>;>;"
        }
    .end annotation
.end field

.field private final hx:Lo/ܖ;

.field private final hy:Lo/ʷ$ˊ;

.field private hz:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<Lo/\u05e5<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ṟ;Lo/ᓳ$if;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lo/ʷ;-><init>(Lo/ṟ;Lo/ᓳ$if;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lo/ל;Ljava/util/Map;Lo/ʷ$if;Lo/ܖ;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lo/ṟ;Lo/ᓳ$if;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lo/ל;Ljava/util/Map;Lo/ʷ$if;Lo/ܖ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1e5f;Lo/\u14f3$if;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map<Lo/\ufb86;Lo/\u0390;>;Lo/\u05dc;Ljava/util/Map<Lo/\ufb86;Ljava/lang/ref/WeakReference<Lo/\u05e5<*>;>;>;Lo/\u02b7$if;Lo/\u0716;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lo/ʷ;->hu:Lo/ṟ;

    .line 72
    new-instance v0, Lo/ʷ$ˊ;

    invoke-direct {v0, p2}, Lo/ʷ$ˊ;-><init>(Lo/ᓳ$if;)V

    iput-object v0, p0, Lo/ʷ;->hy:Lo/ʷ$ˊ;

    .line 74
    if-nez p7, :cond_0

    .line 75
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 77
    :cond_0
    iput-object p7, p0, Lo/ʷ;->hw:Ljava/util/Map;

    .line 79
    if-nez p6, :cond_1

    .line 80
    new-instance p6, Lo/ל;

    invoke-direct {p6}, Lo/ל;-><init>()V

    .line 82
    :cond_1
    iput-object p6, p0, Lo/ʷ;->ht:Lo/ל;

    .line 84
    if-nez p5, :cond_2

    .line 85
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    :cond_2
    iput-object p5, p0, Lo/ʷ;->hs:Ljava/util/Map;

    .line 89
    if-nez p8, :cond_3

    .line 90
    new-instance p8, Lo/ʷ$if;

    invoke-direct {p8, p3, p4, p0}, Lo/ʷ$if;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lo/Γ;)V

    .line 92
    :cond_3
    iput-object p8, p0, Lo/ʷ;->hv:Lo/ʷ$if;

    .line 94
    if-nez p9, :cond_4

    .line 95
    new-instance p9, Lo/ܖ;

    invoke-direct {p9}, Lo/ܖ;-><init>()V

    .line 97
    :cond_4
    iput-object p9, p0, Lo/ʷ;->hx:Lo/ܖ;

    .line 99
    invoke-interface {p1, p0}, Lo/ṟ;->ˊ(Lo/ṟ$if;)V

    .line 100
    return-void
.end method

.method private ˊ(Lo/ﮆ;Z)Lo/ץ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;Z)Lo/\u05e5<*>;"
        }
    .end annotation

    .line 199
    if-nez p2, :cond_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lo/ʷ;->hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 205
    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ץ;

    move-object v1, v0

    .line 207
    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1}, Lo/ץ;->acquire()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lo/ʷ;->hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static ˊ(Ljava/lang/String;JLo/ﮆ;)V
    .locals 4

    .line 195
    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lo/ｯ;->ˎ(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private ˋ(Lo/ﮆ;Z)Lo/ץ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;Z)Lo/\u05e5<*>;"
        }
    .end annotation

    .line 218
    if-nez p2, :cond_0

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lo/ʷ;->ˏ(Lo/ﮆ;)Lo/ץ;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_1

    .line 224
    invoke-virtual {v3}, Lo/ץ;->acquire()V

    .line 225
    iget-object v0, p0, Lo/ʷ;->hw:Ljava/util/Map;

    new-instance v1, Lo/ʷ$ˏ;

    invoke-direct {p0}, Lo/ʷ;->ণ()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, v3, v2}, Lo/ʷ$ˏ;-><init>(Lo/ﮆ;Lo/ץ;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    return-object v3
.end method

.method private ˏ(Lo/ﮆ;)Lo/ץ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;)Lo/\u05e5<*>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lo/ʷ;->hu:Lo/ṟ;

    invoke-interface {v0, p1}, Lo/ṟ;->ͺ(Lo/ﮆ;)Lo/ڔ;

    move-result-object v1

    .line 235
    if-nez v1, :cond_0

    .line 236
    const/4 v2, 0x0

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, v1, Lo/ץ;

    if-eqz v0, :cond_1

    .line 239
    move-object v0, v1

    check-cast v0, Lo/ץ;

    move-object v2, v0

    goto :goto_0

    .line 241
    :cond_1
    new-instance v2, Lo/ץ;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v0}, Lo/ץ;-><init>(Lo/ڔ;Z)V

    .line 243
    :goto_0
    return-object v2
.end method

.method private ণ()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/lang/ref/ReferenceQueue<Lo/\u05e5<*>;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lo/ʷ;->hz:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lo/ʷ;->hz:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    .line 305
    new-instance v0, Lo/ʷ$ˎ;

    iget-object v1, p0, Lo/ʷ;->hw:Ljava/util/Map;

    iget-object v2, p0, Lo/ʷ;->hz:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2}, Lo/ʷ$ˎ;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v3, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lo/ʷ;->hz:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public ʻ(Lo/ڔ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<*>;)V"
        }
    .end annotation

    .line 282
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 283
    iget-object v0, p0, Lo/ʷ;->hx:Lo/ܖ;

    invoke-virtual {v0, p1}, Lo/ܖ;->ͺ(Lo/ڔ;)V

    .line 284
    return-void
.end method

.method public ˊ(Lo/ﮆ;IILo/Į;Lo/ᓹ;Lo/ﺭ;Lo/ғ;Lo/ᔿ;ZLo/ʖ;Lo/ᘆ;)Lo/ʷ$ˋ;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lo/\ufb86;IILo/\u012e<TT;>;Lo/\u14f9<TT;TZ;>;Lo/\ufead<TZ;>;Lo/\u0493<TZ;TR;>;Lo/\u153f;ZLo/\u0296;Lo/\u1606;)Lo/\u02b7$\u02cb;"
        }
    .end annotation

    .line 145
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 146
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v11

    .line 148
    invoke-interface/range {p4 .. p4}, Lo/Į;->getId()Ljava/lang/String;

    move-result-object v13

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʷ;->ht:Lo/ל;

    move-object v1, v13

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {p5 .. p5}, Lo/ᓹ;->ﻩ()Lo/ﺀ;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lo/ᓹ;->ｃ()Lo/ﺀ;

    move-result-object v6

    move-object/from16 v7, p6

    invoke-interface/range {p5 .. p5}, Lo/ᓹ;->ｪ()Lo/ﺪ;

    move-result-object v8

    move-object/from16 v9, p7

    invoke-interface/range {p5 .. p5}, Lo/ᓹ;->ｩ()Lo/ﭥ;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lo/ל;->ˊ(Ljava/lang/String;Lo/ﮆ;IILo/ﺀ;Lo/ﺀ;Lo/ﺭ;Lo/ﺪ;Lo/ғ;Lo/ﭥ;)Lo/τ;

    move-result-object v14

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v14, v1}, Lo/ʷ;->ˋ(Lo/ﮆ;Z)Lo/ץ;

    move-result-object v15

    .line 154
    if-eqz v15, :cond_1

    .line 155
    move-object/from16 v0, p11

    invoke-interface {v0, v15}, Lo/ᘆ;->ʼ(Lo/ڔ;)V

    .line 156
    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "Loaded resource from cache"

    invoke-static {v0, v11, v12, v14}, Lo/ʷ;->ˊ(Ljava/lang/String;JLo/ﮆ;)V

    .line 159
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v14, v1}, Lo/ʷ;->ˊ(Lo/ﮆ;Z)Lo/ץ;

    move-result-object v16

    .line 163
    if-eqz v16, :cond_3

    .line 164
    move-object/from16 v0, p11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lo/ᘆ;->ʼ(Lo/ڔ;)V

    .line 165
    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, v11, v12, v14}, Lo/ʷ;->ˊ(Ljava/lang/String;JLo/ﮆ;)V

    .line 168
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʷ;->hs:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ΐ;

    move-object/from16 v17, v0

    .line 172
    if-eqz v17, :cond_5

    .line 173
    move-object/from16 v0, v17

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lo/ΐ;->ˊ(Lo/ᘆ;)V

    .line 174
    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    const-string v0, "Added to existing load"

    invoke-static {v0, v11, v12, v14}, Lo/ʷ;->ˊ(Ljava/lang/String;JLo/ﮆ;)V

    .line 177
    :cond_4
    new-instance v0, Lo/ʷ$ˋ;

    move-object/from16 v1, p11

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lo/ʷ$ˋ;-><init>(Lo/ᘆ;Lo/ΐ;)V

    return-object v0

    .line 180
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʷ;->hv:Lo/ʷ$if;

    move/from16 v1, p9

    invoke-virtual {v0, v14, v1}, Lo/ʷ$if;->ˎ(Lo/ﮆ;Z)Lo/ΐ;

    move-result-object v18

    .line 181
    new-instance v0, Lo/ʕ;

    move-object v1, v14

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p0

    iget-object v8, v8, Lo/ʷ;->hy:Lo/ʷ$ˊ;

    move-object/from16 v9, p10

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lo/ʕ;-><init>(Lo/τ;IILo/Į;Lo/ᓹ;Lo/ﺭ;Lo/ғ;Lo/ʕ$if;Lo/ʖ;Lo/ᔿ;)V

    move-object/from16 v19, v0

    .line 183
    new-instance v20, Lo/ز;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lo/ز;-><init>(Lo/ز$if;Lo/ʕ;Lo/ᔿ;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʷ;->hs:Ljava/util/Map;

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object/from16 v0, v18

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lo/ΐ;->ˊ(Lo/ᘆ;)V

    .line 186
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lo/ΐ;->ˊ(Lo/ز;)V

    .line 188
    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    const-string v0, "Started new load"

    invoke-static {v0, v11, v12, v14}, Lo/ʷ;->ˊ(Ljava/lang/String;JLo/ﮆ;)V

    .line 191
    :cond_6
    new-instance v0, Lo/ʷ$ˋ;

    move-object/from16 v1, p11

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lo/ʷ$ˋ;-><init>(Lo/ᘆ;Lo/ΐ;)V

    return-object v0
.end method

.method public ˊ(Lo/ΐ;Lo/ﮆ;)V
    .locals 2

    .line 273
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 274
    iget-object v0, p0, Lo/ʷ;->hs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ΐ;

    move-object v1, v0

    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lo/ʷ;->hs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public ˊ(Lo/ﮆ;Lo/ץ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;Lo/\u05e5<*>;)V"
        }
    .end annotation

    .line 258
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1, p0}, Lo/ץ;->ˊ(Lo/ﮆ;Lo/ץ$if;)V

    .line 263
    invoke-virtual {p2}, Lo/ץ;->Ꭻ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lo/ʷ;->hw:Ljava/util/Map;

    new-instance v1, Lo/ʷ$ˏ;

    invoke-direct {p0}, Lo/ʷ;->ণ()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lo/ʷ$ˏ;-><init>(Lo/ﮆ;Lo/ץ;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p0, Lo/ʷ;->hs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public ˋ(Lo/ﮆ;Lo/ץ;)V
    .locals 1

    .line 288
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 289
    iget-object v0, p0, Lo/ʷ;->hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lo/ץ;->Ꭻ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lo/ʷ;->hu:Lo/ṟ;

    invoke-interface {v0, p1, p2}, Lo/ṟ;->ˋ(Lo/ﮆ;Lo/ڔ;)Lo/ڔ;

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lo/ʷ;->hx:Lo/ܖ;

    invoke-virtual {v0, p2}, Lo/ܖ;->ͺ(Lo/ڔ;)V

    .line 295
    :goto_0
    return-void
.end method

.method public ᐝ(Lo/ڔ;)V
    .locals 2

    .line 247
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 248
    instance-of v0, p1, Lo/ץ;

    if-eqz v0, :cond_0

    .line 249
    move-object v0, p1

    check-cast v0, Lo/ץ;

    invoke-virtual {v0}, Lo/ץ;->release()V

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :goto_0
    return-void
.end method
