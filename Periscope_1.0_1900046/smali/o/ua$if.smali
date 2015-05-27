.class final Lo/ua$if;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 265
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ua$if;->setDaemon(Z)V

    .line 267
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 272
    :goto_0
    :try_start_0
    # invokes: Lo/ua;->awaitTimeout()Lo/ua;
    invoke-static {}, Lo/ua;->access$000()Lo/ua;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lo/ua;->timedOut()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    goto :goto_0
.end method
