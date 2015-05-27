.class public Lo/ﻩ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓹ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14f9<Ljava/io/InputStream;Lo/\ufee0;>;"
    }
.end annotation


# instance fields
.field private final kR:Lo/ﾝ;

.field private final kS:Lo/ĵ;

.field private final kv:Lo/Ξ;

.field private final kw:Lo/ﱠ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufc60<Lo/\ufee0;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ი;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/ﾝ;

    invoke-direct {v0, p1, p2}, Lo/ﾝ;-><init>(Landroid/content/Context;Lo/ი;)V

    iput-object v0, p0, Lo/ﻩ;->kR:Lo/ﾝ;

    .line 28
    new-instance v0, Lo/ﱠ;

    iget-object v1, p0, Lo/ﻩ;->kR:Lo/ﾝ;

    invoke-direct {v0, v1}, Lo/ﱠ;-><init>(Lo/ﺀ;)V

    iput-object v0, p0, Lo/ﻩ;->kw:Lo/ﱠ;

    .line 29
    new-instance v0, Lo/ĵ;

    invoke-direct {v0, p2}, Lo/ĵ;-><init>(Lo/ი;)V

    iput-object v0, p0, Lo/ﻩ;->kS:Lo/ĵ;

    .line 30
    new-instance v0, Lo/Ξ;

    invoke-direct {v0}, Lo/Ξ;-><init>()V

    iput-object v0, p0, Lo/ﻩ;->kv:Lo/Ξ;

    .line 31
    return-void
.end method


# virtual methods
.method public ﻩ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/File;Lo/\ufee0;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/ﻩ;->kw:Lo/ﱠ;

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/InputStream;Lo/\ufee0;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lo/ﻩ;->kR:Lo/ﾝ;

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/ﻩ;->kv:Lo/Ξ;

    return-object v0
.end method

.method public ｪ()Lo/ﺪ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufeaa<Lo/\ufee0;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/ﻩ;->kS:Lo/ĵ;

    return-object v0
.end method
