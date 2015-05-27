.class Lo/イ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/イ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final yJ:Ljava/io/BufferedReader;

.field private final yK:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private yL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Queue<Ljava/lang/String;>;Ljava/io/BufferedReader;)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lo/イ$if;->yK:Ljava/util/Queue;

    .line 292
    iput-object p2, p0, Lo/イ$if;->yJ:Ljava/io/BufferedReader;

    .line 293
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lo/イ$if;->yK:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lo/イ$if;->yK:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_1
    iget-object v0, p0, Lo/イ$if;->yJ:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 313
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Lo/イ$if;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lo/イ$if;->yL:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lo/イ$if;->yL:Ljava/lang/String;

    .line 318
    :cond_0
    return-object v1
.end method
