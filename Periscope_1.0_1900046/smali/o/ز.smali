.class Lo/ز;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/כּ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ز$if;,
        Lo/ز$ˊ;
    }
.end annotation


# instance fields
.field private final em:Lo/ᔿ;

.field private volatile hb:Z

.field private final ie:Lo/ز$if;

.field private final if:Lo/ʕ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0295<***>;"
        }
    .end annotation
.end field

.field private ig:Lo/ز$ˊ;


# direct methods
.method public constructor <init>(Lo/ز$if;Lo/ʕ;Lo/ᔿ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0632$if;Lo/\u0295<***>;Lo/\u153f;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/ز;->ie:Lo/ز$if;

    .line 39
    iput-object p2, p0, Lo/ز;->if:Lo/ʕ;

    .line 40
    sget-object v0, Lo/ز$ˊ;->ih:Lo/ز$ˊ;

    iput-object v0, p0, Lo/ز;->ig:Lo/ز$ˊ;

    .line 41
    iput-object p3, p0, Lo/ز;->em:Lo/ᔿ;

    .line 42
    return-void
.end method

.method private ʽ(Lo/ڔ;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ز;->ie:Lo/ز$if;

    invoke-interface {v0, p1}, Lo/ز$if;->ʼ(Lo/ڔ;)V

    .line 86
    return-void
.end method

.method private ˋ(Ljava/lang/Exception;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lo/ز;->Ꮁ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lo/ز$ˊ;->ii:Lo/ز$ˊ;

    iput-object v0, p0, Lo/ز;->ig:Lo/ز$ˊ;

    .line 91
    iget-object v0, p0, Lo/ز;->ie:Lo/ز$if;

    invoke-interface {v0, p0}, Lo/ز$if;->ˋ(Lo/ز;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lo/ز;->ie:Lo/ز$if;

    invoke-interface {v0, p1}, Lo/ز$if;->ˊ(Ljava/lang/Exception;)V

    .line 95
    :goto_0
    return-void
.end method

.method private ډ()Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<*>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lo/ز;->if:Lo/ʕ;

    invoke-virtual {v0}, Lo/ʕ;->ډ()Lo/ڔ;

    move-result-object v0

    return-object v0
.end method

.method private Ꮁ()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lo/ز;->ig:Lo/ز$ˊ;

    sget-object v1, Lo/ز$ˊ;->ih:Lo/ز$ˊ;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Ꮣ()Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<*>;"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lo/ز;->Ꮁ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lo/ز;->ᒦ()Lo/ڔ;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lo/ز;->ډ()Lo/ڔ;

    move-result-object v0

    return-object v0
.end method

.method private ᒦ()Lo/ڔ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<*>;"
        }
    .end annotation

    .line 106
    const/4 v3, 0x0

    .line 108
    :try_start_0
    iget-object v0, p0, Lo/ز;->if:Lo/ʕ;

    invoke-virtual {v0}, Lo/ʕ;->װ()Lo/ڔ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 113
    goto :goto_0

    .line 109
    :catch_0
    move-exception v4

    .line 110
    const-string v0, "EngineRunnable"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "EngineRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding result from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 116
    iget-object v0, p0, Lo/ز;->if:Lo/ʕ;

    invoke-virtual {v0}, Lo/ʕ;->ه()Lo/ڔ;

    move-result-object v3

    .line 118
    :cond_1
    return-object v3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ز;->hb:Z

    .line 46
    iget-object v0, p0, Lo/ز;->if:Lo/ʕ;

    invoke-virtual {v0}, Lo/ʕ;->cancel()V

    .line 47
    return-void
.end method

.method public getPriority()I
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ز;->em:Lo/ᔿ;

    invoke-virtual {v0}, Lo/ᔿ;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .line 51
    iget-boolean v0, p0, Lo/ز;->hb:Z

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lo/ز;->Ꮣ()Lo/ڔ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 64
    goto :goto_0

    .line 59
    :catch_0
    move-exception v4

    .line 60
    const-string v0, "EngineRunnable"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "EngineRunnable"

    const-string v1, "Exception decoding"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1
    move-object v2, v4

    .line 66
    :goto_0
    iget-boolean v0, p0, Lo/ز;->hb:Z

    if-eqz v0, :cond_3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v3}, Lo/ڔ;->recycle()V

    .line 70
    :cond_2
    return-void

    .line 73
    :cond_3
    if-nez v3, :cond_4

    .line 74
    invoke-direct {p0, v2}, Lo/ز;->ˋ(Ljava/lang/Exception;)V

    goto :goto_1

    .line 76
    :cond_4
    invoke-direct {p0, v3}, Lo/ز;->ʽ(Lo/ڔ;)V

    .line 78
    :goto_1
    return-void
.end method
