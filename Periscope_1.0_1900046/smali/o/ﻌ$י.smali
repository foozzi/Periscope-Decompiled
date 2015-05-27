.class Lo/ﻌ$י;
.super Lo/ﻌ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u05d9"
.end annotation


# instance fields
.field private final EV:[B


# direct methods
.method constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ﻌ$if;-><init>([B)V

    iput-object p1, p0, Lo/ﻌ$י;->EV:[B

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    iget-object v0, p0, Lo/ﻌ$י;->EV:[B

    return-object v0
.end method
