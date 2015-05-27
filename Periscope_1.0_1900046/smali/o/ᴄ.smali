.class Lo/ᴄ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eZ:Lo/ধ;

.field final synthetic fa:Lo/ᕻ;


# direct methods
.method constructor <init>(Lo/ᕻ;Lo/ধ;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/ᴄ;->fa:Lo/ᕻ;

    iput-object p2, p0, Lo/ᴄ;->eZ:Lo/ধ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lo/ᴄ;->eZ:Lo/ধ;

    iget-object v1, p0, Lo/ᴄ;->fa:Lo/ᕻ;

    invoke-interface {v0, v1}, Lo/ধ;->ˊ(Lo/ร;)V

    .line 76
    return-void
.end method
