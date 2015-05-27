.class public Lo/ᓵ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final dV:Landroid/content/Context;

.field private eC:Lo/ʷ;

.field private eD:Lo/ი;

.field private eE:Lo/ṟ;

.field private eF:Lo/ﭝ;

.field private eP:Ljava/util/concurrent/ExecutorService;

.field private eQ:Ljava/util/concurrent/ExecutorService;

.field private eR:Lo/ᓳ$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ᓵ;->dV:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method ᓳ()Lo/ᓲ;
    .locals 8

    .line 169
    iget-object v0, p0, Lo/ᓵ;->eP:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 171
    new-instance v0, Lo/ΐ;

    invoke-direct {v0, v6}, Lo/ΐ;-><init>(I)V

    iput-object v0, p0, Lo/ᓵ;->eP:Ljava/util/concurrent/ExecutorService;

    .line 173
    :cond_0
    iget-object v0, p0, Lo/ᓵ;->eQ:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lo/ΐ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/ΐ;-><init>(I)V

    iput-object v0, p0, Lo/ᓵ;->eQ:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v6, Lo/ẛ;

    iget-object v0, p0, Lo/ᓵ;->dV:Landroid/content/Context;

    invoke-direct {v6, v0}, Lo/ẛ;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lo/ᓵ;->eD:Lo/ი;

    if-nez v0, :cond_3

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 180
    invoke-virtual {v6}, Lo/ẛ;->ẍ()I

    move-result v7

    .line 181
    new-instance v0, Lo/ᒣ;

    invoke-direct {v0, v7}, Lo/ᒣ;-><init>(I)V

    iput-object v0, p0, Lo/ᓵ;->eD:Lo/ი;

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    new-instance v0, Lo/Ꮀ;

    invoke-direct {v0}, Lo/Ꮀ;-><init>()V

    iput-object v0, p0, Lo/ᓵ;->eD:Lo/ი;

    .line 187
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/ᓵ;->eE:Lo/ṟ;

    if-nez v0, :cond_4

    .line 188
    new-instance v0, Lo/ḻ;

    invoke-virtual {v6}, Lo/ẛ;->ẋ()I

    move-result v1

    invoke-direct {v0, v1}, Lo/ḻ;-><init>(I)V

    iput-object v0, p0, Lo/ᓵ;->eE:Lo/ṟ;

    .line 191
    :cond_4
    iget-object v0, p0, Lo/ᓵ;->eR:Lo/ᓳ$if;

    if-nez v0, :cond_5

    .line 192
    new-instance v0, Lo/ᵠ;

    iget-object v1, p0, Lo/ᓵ;->dV:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/ᵠ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ᓵ;->eR:Lo/ᓳ$if;

    .line 195
    :cond_5
    iget-object v0, p0, Lo/ᓵ;->eC:Lo/ʷ;

    if-nez v0, :cond_6

    .line 196
    new-instance v0, Lo/ʷ;

    iget-object v1, p0, Lo/ᓵ;->eE:Lo/ṟ;

    iget-object v2, p0, Lo/ᓵ;->eR:Lo/ᓳ$if;

    iget-object v3, p0, Lo/ᓵ;->eQ:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lo/ᓵ;->eP:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ʷ;-><init>(Lo/ṟ;Lo/ᓳ$if;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lo/ᓵ;->eC:Lo/ʷ;

    .line 199
    :cond_6
    iget-object v0, p0, Lo/ᓵ;->eF:Lo/ﭝ;

    if-nez v0, :cond_7

    .line 200
    sget-object v0, Lo/ﭝ;->gS:Lo/ﭝ;

    iput-object v0, p0, Lo/ᓵ;->eF:Lo/ﭝ;

    .line 203
    :cond_7
    new-instance v0, Lo/ᓲ;

    iget-object v1, p0, Lo/ᓵ;->eC:Lo/ʷ;

    iget-object v2, p0, Lo/ᓵ;->eE:Lo/ṟ;

    iget-object v3, p0, Lo/ᓵ;->eD:Lo/ი;

    iget-object v4, p0, Lo/ᓵ;->dV:Landroid/content/Context;

    iget-object v5, p0, Lo/ᓵ;->eF:Lo/ﭝ;

    invoke-direct/range {v0 .. v5}, Lo/ᓲ;-><init>(Lo/ʷ;Lo/ṟ;Lo/ი;Landroid/content/Context;Lo/ﭝ;)V

    return-object v0
.end method
