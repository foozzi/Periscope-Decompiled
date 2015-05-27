.class public Lo/ᕻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ร;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᕻ$ˎ;,
        Lo/ᕻ$ˋ;,
        Lo/ᕻ$ˊ;,
        Lo/ᕻ$if;
    }
.end annotation


# instance fields
.field private final dT:Lo/ᕻ$ˋ;

.field private final dV:Landroid/content/Context;

.field private final dW:Lo/ᓲ;

.field private final dY:Lo/ᐜ;

.field private final dZ:Lo/ধ;

.field private final eX:Lo/Ꮠ;

.field private eY:Lo/ᕻ$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ধ;Lo/Ꮠ;)V
    .locals 6

    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lo/ᐜ;

    invoke-direct {v4}, Lo/ᐜ;-><init>()V

    new-instance v5, Lo/ٳ;

    invoke-direct {v5}, Lo/ٳ;-><init>()V

    invoke-direct/range {v0 .. v5}, Lo/ᕻ;-><init>(Landroid/content/Context;Lo/ধ;Lo/Ꮠ;Lo/ᐜ;Lo/ٳ;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/ধ;Lo/Ꮠ;Lo/ᐜ;Lo/ٳ;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ᕻ;->dV:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lo/ᕻ;->dZ:Lo/ধ;

    .line 60
    iput-object p3, p0, Lo/ᕻ;->eX:Lo/Ꮠ;

    .line 61
    iput-object p4, p0, Lo/ᕻ;->dY:Lo/ᐜ;

    .line 62
    invoke-static {p1}, Lo/ᓲ;->ˉ(Landroid/content/Context;)Lo/ᓲ;

    move-result-object v0

    iput-object v0, p0, Lo/ᕻ;->dW:Lo/ᓲ;

    .line 63
    new-instance v0, Lo/ᕻ$ˋ;

    invoke-direct {v0, p0}, Lo/ᕻ$ˋ;-><init>(Lo/ᕻ;)V

    iput-object v0, p0, Lo/ᕻ;->dT:Lo/ᕻ$ˋ;

    .line 65
    new-instance v0, Lo/ᕻ$ˎ;

    invoke-direct {v0, p4}, Lo/ᕻ$ˎ;-><init>(Lo/ᐜ;)V

    invoke-virtual {p5, p1, v0}, Lo/ٳ;->ˊ(Landroid/content/Context;Lo/ٲ$if;)Lo/ٲ;

    move-result-object v2

    .line 71
    invoke-static {}, Lo/ﾕ;->ﮇ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lo/ᴄ;

    invoke-direct {v1, p0, p2}, Lo/ᴄ;-><init>(Lo/ᕻ;Lo/ধ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lo/ধ;->ˊ(Lo/ร;)V

    .line 81
    :goto_0
    invoke-interface {p2, v2}, Lo/ধ;->ˊ(Lo/ร;)V

    .line 82
    return-void
.end method

.method static synthetic ʻ(Lo/ᕻ;)Lo/ᕻ$if;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ᕻ;->eY:Lo/ᕻ$if;

    return-object v0
.end method

.method private static ˆ(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(TT;)Ljava/lang/Class<TT;>;"
        }
    .end annotation

    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic ˇ(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .line 43
    invoke-static {p0}, Lo/ᕻ;->ˆ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/ᕻ;)Landroid/content/Context;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ᕻ;->dV:Landroid/content/Context;

    return-object v0
.end method

.method private ˊ(Ljava/lang/Class;)Lo/ઽ;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lo/\u0abd<TT;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lo/ᕻ;->dV:Landroid/content/Context;

    invoke-static {p1, v0}, Lo/ᓲ;->ˊ(Ljava/lang/Class;Landroid/content/Context;)Lo/ɽ;

    move-result-object v10

    .line 626
    iget-object v0, p0, Lo/ᕻ;->dV:Landroid/content/Context;

    invoke-static {p1, v0}, Lo/ᓲ;->ˋ(Ljava/lang/Class;Landroid/content/Context;)Lo/ɽ;

    move-result-object v11

    .line 628
    if-eqz p1, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v0, p0, Lo/ᕻ;->dT:Lo/ᕻ$ˋ;

    new-instance v1, Lo/ઽ;

    iget-object v5, p0, Lo/ᕻ;->dV:Landroid/content/Context;

    iget-object v6, p0, Lo/ᕻ;->dW:Lo/ᓲ;

    iget-object v7, p0, Lo/ᕻ;->dY:Lo/ᐜ;

    iget-object v8, p0, Lo/ᕻ;->dZ:Lo/ধ;

    iget-object v9, p0, Lo/ᕻ;->dT:Lo/ᕻ$ˋ;

    move-object v2, p1

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v1 .. v9}, Lo/ઽ;-><init>(Ljava/lang/Class;Lo/ɽ;Lo/ɽ;Landroid/content/Context;Lo/ᓲ;Lo/ᐜ;Lo/ধ;Lo/ᕻ$ˋ;)V

    invoke-virtual {v0, v1}, Lo/ᕻ$ˋ;->ˋ(Lo/ເ;)Lo/ເ;

    move-result-object v0

    check-cast v0, Lo/ઽ;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᕻ;)Lo/ᓲ;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ᕻ;->dW:Lo/ᓲ;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ᕻ;)Lo/ᐜ;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ᕻ;->dY:Lo/ᐜ;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ᕻ;)Lo/ধ;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ᕻ;->dZ:Lo/ধ;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/ᕻ;)Lo/ᕻ$ˋ;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ᕻ;->dT:Lo/ᕻ$ˋ;

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Lo/ᕻ;->dY:Lo/ᐜ;

    invoke-virtual {v0}, Lo/ᐜ;->ใ()V

    .line 222
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/ᕻ;->dW:Lo/ᓲ;

    invoke-virtual {v0}, Lo/ᓲ;->ᒪ()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lo/ᕻ;->ᴠ()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lo/ᕻ;->ᘄ()V

    .line 213
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/ᕻ;->dW:Lo/ᓲ;

    invoke-virtual {v0, p1}, Lo/ᓲ;->ﹼ(I)V

    .line 89
    return-void
.end method

.method public ʻ(Ljava/lang/String;)Lo/ઽ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)Lo/\u0abd<Ljava/lang/String;>;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lo/ᕻ;->ᴰ()Lo/ઽ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ઽ;->ʳ(Ljava/lang/Object;)Lo/ڏ;

    move-result-object v0

    check-cast v0, Lo/ઽ;

    return-object v0
.end method

.method public ˊ(Lo/ɽ;Ljava/lang/Class;)Lo/ᕻ$ˊ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:Ljava/lang/Object;T:Ljava/lang/Object;>(Lo/\u027d<TA;TT;>;Ljava/lang/Class<TT;>;)Lo/\u157b$\u02ca<TA;TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lo/ᕻ$ˊ;

    invoke-direct {v0, p0, p1, p2}, Lo/ᕻ$ˊ;-><init>(Lo/ᕻ;Lo/ɽ;Ljava/lang/Class;)V

    return-object v0
.end method

.method public ᘄ()V
    .locals 1

    .line 147
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 148
    iget-object v0, p0, Lo/ᕻ;->dY:Lo/ᐜ;

    invoke-virtual {v0}, Lo/ᐜ;->ᘄ()V

    .line 149
    return-void
.end method

.method public ᴠ()V
    .locals 1

    .line 179
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 180
    iget-object v0, p0, Lo/ᕻ;->dY:Lo/ᐜ;

    invoke-virtual {v0}, Lo/ᐜ;->ᴠ()V

    .line 181
    return-void
.end method

.method public ᴰ()Lo/ઽ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0abd<Ljava/lang/String;>;"
        }
    .end annotation

    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/ᕻ;->ˊ(Ljava/lang/Class;)Lo/ઽ;

    move-result-object v0

    return-object v0
.end method
