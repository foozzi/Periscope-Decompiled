.class Lo/ᕻ$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ٲ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᕻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ce"
.end annotation


# instance fields
.field private final dY:Lo/ᐜ;


# direct methods
.method public constructor <init>(Lo/ᐜ;)V
    .locals 0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lo/ᕻ$ˎ;->dY:Lo/ᐜ;

    .line 794
    return-void
.end method


# virtual methods
.method public ˮ(Z)V
    .locals 1

    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lo/ᕻ$ˎ;->dY:Lo/ᐜ;

    invoke-virtual {v0}, Lo/ᐜ;->Ꭲ()V

    .line 801
    :cond_0
    return-void
.end method
