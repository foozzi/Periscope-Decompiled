.class Lo/ou;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<Lo/ot$if;>;"
    }
.end annotation


# instance fields
.field final synthetic Ua:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/ou;->Ua:Lo/ot;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bX()Lo/ot$if;
    .locals 1

    .line 56
    new-instance v0, Lo/ot$if;

    invoke-direct {v0}, Lo/ot$if;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/ou;->bX()Lo/ot$if;

    move-result-object v0

    return-object v0
.end method
