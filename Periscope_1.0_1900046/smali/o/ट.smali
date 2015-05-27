.class public Lo/ट;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ट$ˋ;,
        Lo/ट$ˊ;,
        Lo/ट$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u05e1$if;"
    }
.end annotation


# instance fields
.field private final AR:Lo/ت;

.field private final AS:Lo/ٺ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u067a$if<TT;>;"
        }
    .end annotation
.end field

.field private final Bb:Lo/ट$if;

.field volatile Bc:Ljava/lang/String;

.field private Bd:Lo/ٺ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u067a<TT;>;"
        }
    .end annotation
.end field

.field private Be:I

.field private Bf:J

.field private Bg:Ljava/io/IOException;

.field private volatile Bh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile Bi:J

.field private final qK:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ت;Lo/ٺ$if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/\u062a;Lo/\u067a$if<TT;>;)V"
        }
    .end annotation

    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/ट;-><init>(Ljava/lang/String;Lo/ت;Lo/ٺ$if;Landroid/os/Handler;Lo/ट$if;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/ت;Lo/ٺ$if;Landroid/os/Handler;Lo/ट$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/\u062a;Lo/\u067a$if<TT;>;Landroid/os/Handler;Lo/\u091f$if;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p3, p0, Lo/ट;->AS:Lo/ٺ$if;

    .line 125
    iput-object p1, p0, Lo/ट;->Bc:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lo/ट;->AR:Lo/ت;

    .line 127
    iput-object p4, p0, Lo/ट;->qK:Landroid/os/Handler;

    .line 128
    iput-object p5, p0, Lo/ट;->Bb:Lo/ट$if;

    .line 129
    return-void
.end method

.method private Ț()V
    .locals 2

    .line 283
    iget-object v0, p0, Lo/ट;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ट;->Bb:Lo/ट$if;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lo/ट;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ও;

    invoke-direct {v1, p0}, Lo/ও;-><init>(Lo/ट;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :cond_0
    return-void
.end method

.method static synthetic ˊ(Lo/ट;)Lo/ट$if;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/ट;->Bb:Lo/ट$if;

    return-object v0
.end method

.method private ˋ(Ljava/io/IOException;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lo/ट;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ट;->Bb:Lo/ट$if;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lo/ट;->qK:Landroid/os/Handler;

    new-instance v1, Lo/চ;

    invoke-direct {v1, p0, p1}, Lo/চ;-><init>(Lo/ट;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public ˊ(Landroid/os/Looper;Lo/ट$ˊ;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/os/Looper;Lo/\u091f$\u02ca<TT;>;)V"
        }
    .end annotation

    .line 148
    new-instance v4, Lo/ट$ˋ;

    new-instance v0, Lo/ٺ;

    iget-object v1, p0, Lo/ट;->Bc:Ljava/lang/String;

    iget-object v2, p0, Lo/ट;->AR:Lo/ت;

    iget-object v3, p0, Lo/ट;->AS:Lo/ٺ$if;

    invoke-direct {v0, v1, v2, v3}, Lo/ٺ;-><init>(Ljava/lang/String;Lo/ت;Lo/ٺ$if;)V

    invoke-direct {v4, p0, v0, p1, p2}, Lo/ट$ˋ;-><init>(Lo/ट;Lo/ٺ;Landroid/os/Looper;Lo/ट$ˊ;)V

    .line 150
    invoke-virtual {v4}, Lo/ट$ˋ;->startLoading()V

    .line 151
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lo/ट;->Bd:Lo/ٺ;

    if-eq v0, p1, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lo/ट;->Bd:Lo/ٺ;

    invoke-virtual {v0}, Lo/ٺ;->getResult()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ट;->Bh:Ljava/lang/Object;

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ट;->Bi:J

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lo/ट;->Be:I

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ट;->Bg:Ljava/io/IOException;

    .line 240
    invoke-direct {p0}, Lo/ट;->Ț()V

    .line 241
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;Ljava/io/IOException;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lo/ट;->Bd:Lo/ٺ;

    if-eq v0, p1, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    iget v0, p0, Lo/ट;->Be:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ट;->Be:I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ट;->Bf:J

    .line 257
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lo/ट;->Bg:Ljava/io/IOException;

    .line 259
    iget-object v0, p0, Lo/ट;->Bg:Ljava/io/IOException;

    invoke-direct {p0, v0}, Lo/ट;->ˋ(Ljava/io/IOException;)V

    .line 260
    return-void
.end method

.method public ˋ(Lo/ס$ˋ;)V
    .locals 0

    .line 246
    return-void
.end method

.method ᐟ(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lo/ट;->Bh:Ljava/lang/Object;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ट;->Bi:J

    .line 265
    return-void
.end method
