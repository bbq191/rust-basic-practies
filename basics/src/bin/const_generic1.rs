// 修复错误
struct Array<T, const N: usize> {
    data: [T; N],
}

fn main() {
    let arrays = [
        Array { data: [1, 2, 3] },
        Array { data: [4, 6, 5] },
        Array { data: [1, 2, 9] },
    ];
}
