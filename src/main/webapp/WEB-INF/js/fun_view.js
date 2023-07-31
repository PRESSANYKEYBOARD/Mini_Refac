//천 단위마다 ,찍기
//문자열이여야 하며, Int형일 경우 반드시 문자열인 String형으로 변환해야 한다.
function addComma(value) {
  if (typeof value === "number") {
    value = String(value); //Int 형을 문자열로 변환
  }
  
  value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  return value;
}