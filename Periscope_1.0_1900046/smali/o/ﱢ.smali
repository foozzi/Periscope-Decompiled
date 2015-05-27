.class public Lo/ﱢ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓹ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﱢ$1;,
        Lo/ﱢ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14f9<Ljava/io/InputStream;Ljava/io/File;>;"
    }
.end annotation


# static fields
.field private static final kE:Lo/ﱢ$if;


# instance fields
.field private final hT:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/File;Ljava/io/File;>;"
        }
    .end annotation
.end field

.field private final hj:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<Ljava/io/InputStream;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lo/ﱢ$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ﱢ$if;-><init>(Lo/ﱢ$1;)V

    sput-object v0, Lo/ﱢ;->kE:Lo/ﱢ$if;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lo/ﮃ;

    invoke-direct {v0}, Lo/ﮃ;-><init>()V

    iput-object v0, p0, Lo/ﱢ;->hT:Lo/ﺀ;

    .line 26
    new-instance v0, Lo/Ξ;

    invoke-direct {v0}, Lo/Ξ;-><init>()V

    iput-object v0, p0, Lo/ﱢ;->hj:Lo/ﭥ;

    .line 27
    return-void
.end method


# virtual methods
.method public ﻩ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/File;Ljava/io/File;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/ﱢ;->hT:Lo/ﺀ;

    return-object v0
.end method

.method public ｃ()Lo/ﺀ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufe80<Ljava/io/InputStream;Ljava/io/File;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lo/ﱢ;->kE:Lo/ﱢ$if;

    return-object v0
.end method

.method public ｩ()Lo/ﭥ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufb65<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/ﱢ;->hj:Lo/ﭥ;

    return-object v0
.end method

.method public ｪ()Lo/ﺪ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufeaa<Ljava/io/File;>;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lo/Ꮁ;->ﱠ()Lo/Ꮁ;

    move-result-object v0

    return-object v0
.end method
