.class public Lo/ږ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʃ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ږ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0283<Lo/\ufee3;Ljava/io/InputStream;>;"
    }
.end annotation


# instance fields
.field private final jP:Lo/ċ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u010b<Lo/\ufee3;Lo/\ufee3;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/ċ;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lo/ċ;-><init>(I)V

    iput-object v0, p0, Lo/ږ$if;->jP:Lo/ċ;

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/content/Context;Lo/ﺬ;)Lo/ɽ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\ufeac;)Lo/\u027d<Lo/\ufee3;Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lo/ږ;

    iget-object v1, p0, Lo/ږ$if;->jP:Lo/ċ;

    invoke-direct {v0, v1}, Lo/ږ;-><init>(Lo/ċ;)V

    return-object v0
.end method

.method public ﮃ()V
    .locals 0

    .line 37
    return-void
.end method
